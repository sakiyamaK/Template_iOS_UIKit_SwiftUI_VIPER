//
//  LaunchInteractor.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import Foundation

protocol LaunchUsecase {
  func launch(completion: ((Bool) -> Void)?)
}

final class LaunchInteractor {
  init() {
  }
}

extension LaunchInteractor: LaunchUsecase {
  func launch(completion: ((Bool) -> Void)? = nil) {
    completion?(true)
  }
}
