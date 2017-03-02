/*
 Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing software
 distributed under the License is distributed on an "AS IS" BASIS
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <XCTest/XCTest.h>
#import "MaterialTypography.h"

@interface SystemFontLoaderTests : XCTestCase

@end

@implementation SystemFontLoaderTests

- (void)testExample {
  // Given
  CGFloat size = 10.0;
  MDCSystemFontLoader *fontLoader = [[MDCSystemFontLoader alloc] init];

  // Then
  if ([UIFont respondsToSelector:@selector(systemFontOfSize:weight:)]) {
    XCTAssertEqual([fontLoader lightFontOfSize:size],
                   [UIFont systemFontOfSize:size weight: UIFontWeightLight]);
    XCTAssertEqual([fontLoader regularFontOfSize:size],
                   [UIFont systemFontOfSize:size weight: UIFontWeightRegular]);
    XCTAssertEqual([fontLoader mediumFontOfSize:size],
                   [UIFont systemFontOfSize:size weight: UIFontWeightMedium]);
    XCTAssertEqual([fontLoader boldFontOfSize:size],
                   [UIFont systemFontOfSize:size weight: UIFontWeightBold]);
  } else {
    // Fallback on earlier versions
    XCTAssertEqual([fontLoader lightFontOfSize:size], [UIFont systemFontOfSize:size]);
    XCTAssertEqual([fontLoader regularFontOfSize:size], [UIFont systemFontOfSize:size]);
    XCTAssertEqual([fontLoader mediumFontOfSize:size], [UIFont systemFontOfSize:size]);
    XCTAssertEqual([fontLoader boldFontOfSize:size], [UIFont boldSystemFontOfSize:size]);
  }
  XCTAssertEqual([fontLoader italicFontOfSize:size], [UIFont italicSystemFontOfSize:size]);

}

@end