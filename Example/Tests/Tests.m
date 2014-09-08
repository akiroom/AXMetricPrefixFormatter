//
//  AXMetricPrefixFormatterTests.m
//  AXMetricPrefixFormatterTests
//
//

#import <AXMetricPrefixFormatter/AXMetricPrefixFormatter.h>

SpecBegin(InitialSpecs)

describe(@"valid result in", ^{
  __block AXMetricPrefixFormatter *metricPrefixFormatter;
  before(^{
    metricPrefixFormatter = [[AXMetricPrefixFormatter alloc] init];
  });
  
  it(@"calculate number", ^{
    // Number
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(0)]).to.equal(@"0");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1)]).to.equal(@"1");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(9)]).to.equal(@"9");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(12)]).to.equal(@"12");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100)]).to.equal(@"100");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(999)]).to.equal(@"999");
  });
  
  it(@"calculate kilo number", ^{
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000)]).to.equal(@"1K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1200)]).to.equal(@"1.2K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1230)]).to.equal(@"1.23K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1234)]).to.equal(@"1.23K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000)]).to.equal(@"10K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10030)]).to.equal(@"10K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10200)]).to.equal(@"10.2K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100000)]).to.equal(@"100K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100100)]).to.equal(@"100K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(101000)]).to.equal(@"101K");
  });
  
  it(@"calculate mega number", ^{
    // Mega
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000000)]).to.equal(@"1M");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000000)]).to.equal(@"10M");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100000000)]).to.equal(@"100M");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100834923)]).to.equal(@"101M");
  });
  
  it(@"calculate billion number", ^{
    // Billion
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000000000)]).to.equal(@"1B");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000000000)]).to.equal(@"10B");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10500000000)]).to.equal(@"10.5B");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100000000000)]).to.equal(@"100B");
  });
  
  it(@"calculate trillion number", ^{
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000000000000)]).to.equal(@"1T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1230000000000)]).to.equal(@"1.23T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000000000000)]).to.equal(@"10T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10900000000000)]).to.equal(@"10.9T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10990000000000)]).to.equal(@"11T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100000000000000)]).to.equal(@"100T");
  });
  
  it(@"calculate too much number", ^{
    // Too much number
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000000000000000)]).to.equal(@"1,000T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000000000000001)]).to.equal(@"1,000T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1000100000000000)]).to.equal(@"1,000T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000000000000000)]).to.equal(@"10,000T");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10000100000000000)]).to.equal(@"10,000T");
  });
  
  it(@"calculate minus number", ^{
    // Number
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-1)]).to.equal(@"-1");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-9)]).to.equal(@"-9");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-12)]).to.equal(@"-12");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-100)]).to.equal(@"-100");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-1234)]).to.equal(@"-1.23K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-10030)]).to.equal(@"-10K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-10200)]).to.equal(@"-10.2K");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-100834923)]).to.equal(@"-101M");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-10500000000)]).to.equal(@"-10.5B");
    expect([metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-1230000000000)]).to.equal(@"-1.23T");

  });

});

SpecEnd
