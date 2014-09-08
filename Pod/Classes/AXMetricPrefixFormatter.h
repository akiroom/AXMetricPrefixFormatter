//
//  AXMetricPrefixFormatter.h
//  Pods
//

#import <Foundation/Foundation.h>

@interface AXMetricPrefixFormatter : NSNumberFormatter

@property (copy, nonatomic) NSArray *metricPrefixes;
- (NSString *)stringWithMetricPrefixFromNumber:(NSNumber *)number;

@end
