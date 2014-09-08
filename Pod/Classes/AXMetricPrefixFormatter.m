//
//  AXMetricPrefixFormatter.m
//  Pods
//

#import "AXMetricPrefixFormatter.h"

@implementation AXMetricPrefixFormatter

- (id)init
{
  if (self = [super init]) {
    self.numberStyle = NSNumberFormatterDecimalStyle;
    self.minimumFractionDigits = 0;
    self.maximumSignificantDigits = 3;
    self.groupingSize = 3;
//    self.roundingMode = NSNumberFormatterRoundDown;
    
    _metricPrefixes = @[@"", @"K", @"M", @"B", @"T"];
  }
  return self;
}

- (NSString *)stringWithMetricPrefixFromNumber:(NSNumber *)number
{
  long long integer = [number longLongValue];
  if (integer == 0) {
    return @"0";
  }
  
  BOOL isMinusValue = (integer < 0);
  if (isMinusValue) {
    // long long abs
    integer *= -1;
  }
  
  NSUInteger split = self.groupingSize;
  
  // Get digit of argument.
  float power10 = floor(log10(integer));
  
  // split桁ずつ区切る
  NSInteger prefixIndex = floor((power10) / split);
  
  // 用意済みのプリフィクスの数を越えている場合は最後のプリフィクスを使う
  if (_metricPrefixes.count <= prefixIndex) {
    prefixIndex = _metricPrefixes.count - 1;
  }
  
  // KとかMを付けた場合の数値を取得
  float result = 1.0 * integer / pow(1000, prefixIndex);
  
  // 整数部の桁数に合わせて小数部の最大桁数を決定
  NSInteger digit = floor(log10(result) + 1);
  self.maximumFractionDigits = MAX(3 - digit, 0);
  
  if (isMinusValue) {
    result *= -1;
  }
  
  // 文字列化して返却
  return [NSString stringWithFormat:@"%@%@",
          [self stringFromNumber:@(result)],
          [_metricPrefixes objectAtIndex:prefixIndex]];
}

@end
