//
//  LoginPresentation.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import Foundation

protocol LoginPresentation: AnyObject {
  func viewDidLoad()
}

final class LoginPresenter {
  private weak var view: LoginViewHelper?
  private let router: LoginWireframe
  private let interactor: LoginUsecase

  init(
    view: LoginViewHelper,
    interactor: LoginUsecase,
    router: LoginWireframe
  ) {
    self.view = view
    self.interactor = interactor
    self.router = router
  }
}

extension LoginPresenter: LoginPresentation {
  func viewDidLoad() {
  }
}