# AXMetricPrefixFormatter

[![CI Status](http://img.shields.io/travis/Hiroki Akiyama/AXMetricPrefixFormatter.svg?style=flat)](https://travis-ci.org/Hiroki Akiyama/AXMetricPrefixFormatter)
[![Version](https://img.shields.io/cocoapods/v/AXMetricPrefixFormatter.svg?style=flat)](http://cocoadocs.org/docsets/AXMetricPrefixFormatter)
[![License](https://img.shields.io/cocoapods/l/AXMetricPrefixFormatter.svg?style=flat)](http://cocoadocs.org/docsets/AXMetricPrefixFormatter)
[![Platform](https://img.shields.io/cocoapods/p/AXMetricPrefixFormatter.svg?style=flat)](http://cocoadocs.org/docsets/AXMetricPrefixFormatter)

Convert NSNumber(Integer) to NSString with metric prefix.

- 0 -> 0
- 987 -> 987
- 1200 -> 1.2K
- 100834923 -> 101M
- 10500000000 -> 10.5B
- 1230000000000 -> 1.23T
- -10200 -> -10.2K

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Installation

AXMetricPrefixFormatter is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "AXMetricPrefixFormatter"

### How to use it

```
AXMetricPrefixFormatter *metricPrefixFormatter = [[AXMetricPrefixFormatter alloc] init];

NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(0)]);
NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1200)]);
NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(100834923)]);
NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(10500000000)]);
NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(1230000000000)]);
NSLog(@"%@", [metricPrefixFormatter stringWithMetricPrefixFromNumber:@(-10200)]);


/*
 Console:
 0
 1.2K
 101M
 10.5B
 1.23T
 -10.2K
 */
```

## Author

Hiroki Akiyama, aki-hiroki@nifty.com

## License

AXMetricPrefixFormatter is available under the MIT license. See the LICENSE file for more info.

