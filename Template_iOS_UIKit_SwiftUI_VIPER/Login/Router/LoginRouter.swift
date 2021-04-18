//
//  LoginRouter.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import SwiftUI
import UIKit

protocol LoginWireframe: AnyObject {
}

final class LoginRouter {
  private unowned let viewController: UIViewController

  private init(viewController: UIViewController) {
    self.viewController = viewController
  }

  static func assembleModules() -> UIViewController {
    let interactor = LoginInteractor()
    let viewHelper = LoginViewHelperImpl()
    let view = LoginView(viewHelper: viewHelper)
    let viewController = UIHostingController(rootView: view)
    let router = LoginRouter(viewController: viewController)
    let presenter = LoginPresenter(
      view: viewHelper,
      interactor: interactor,
      router: router
    )
    viewHelper.inject(presenter: presenter)
    return viewController
  }
}

extension LoginRouter: LoginWireframe {
}