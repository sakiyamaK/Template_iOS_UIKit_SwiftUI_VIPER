//
//  LaunchPresentation.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import Foundation

protocol LaunchPresentation: AnyObject {
  func launch()
}

final class LaunchPresenter {
  private let router: LaunchWireframe
  private let interactor: LaunchUsecase

  init(
    interactor: LaunchUsecase,
    router: LaunchWireframe
  ) {
    self.interactor = interactor
    self.router = router
  }
}

extension LaunchPresenter: LaunchPresentation {
  func launch() {
    interactor.launch { (logined) in
      if logined {
        self.router.login()
      } else {
        self.router.logout()
      }
    }
  }
}
