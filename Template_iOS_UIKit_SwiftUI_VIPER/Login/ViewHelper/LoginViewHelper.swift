//
//  LoginViewHelper.swift
//  Template_iOS_UIKit_SwiftUI_VIPER
//
//  Created by  on 2021/4/18.
//

import Combine

protocol LoginViewHelper: AnyObject {
}

final class LoginViewHelperImpl: ObservableObject {

  private var presenter: LoginPresentation!
  func inject(presenter: LoginPresentation) {
    self.presenter = presenter
  }
}

extension LoginViewHelperImpl: LoginViewHelper {
}
