//
//  LaunchRouter.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import SwiftUI
import UIKit

protocol LaunchWireframe: AnyObject {
  func login()
  func logout()
}

final class LaunchRouter {
  static let shared: LaunchRouter = .init()
  private(set) var window: UIWindow?
  private(set) var presenter: LaunchPresenter?

  init() {
    let interactor = LaunchInteractor()
    let presenter = LaunchPresenter(
      interactor: interactor,
      router: self
    )
    self.presenter = presenter
  }

  func launch(window: UIWindow?) {
    self.window = window
    presenter?.launch()
  }
}

extension LaunchRouter: LaunchWireframe {
  func login() {
    window?.rootViewController = LoginRouter.assembleModules()
    window?.makeKeyAndVisible()
  }
  func logout() {
    window?.rootViewController = LoginRouter.assembleModules()
    window?.makeKeyAndVisible()
  }
}
