/*Copyright 2016-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */
/* IMPORTANT:
 This file contains supplemental code used to populate the examples with dummy data and/or
 instructions. It is not necessary to import this file to use Material Components for iOS.
 */

import Foundation
import MaterialComponents.MaterialMaskedTransition

extension MaskedTransitionTypicalUseSwiftExample {

  // MARK: - CatalogByConvention

  @objc class func catalogBreadcrumbs() -> [String] {
    return [ "Masked Transition", "Masked Transition (Swift)" ]
  }

  @objc class func catalogDescription() -> String {
    return "Examples of how the Floating Action Button can transition to other on-screen views."
  }

  @objc class func catalogIsPrimaryDemo() -> Bool {
    return true
  }

  @objc class func catalogIsPresentable() -> Bool {
    return true
  }
}
