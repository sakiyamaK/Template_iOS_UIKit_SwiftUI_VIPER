//
//  __PREFIX__ViewHelper.swift
//  __TARGET__
//
//  Created by __USERNAME__ on __YEAR__/__MONTH__/__DAY__.
//

import Combine

protocol __PREFIX__ViewHelper: AnyObject {
}

final class __PREFIX__ViewHelperImpl: ObservableObject {

  private var presenter: __PREFIX__Presentation!
  func inject(presenter: __PREFIX__Presentation) {
    self.presenter = presenter
  }
}

extension __PREFIX__ViewHelperImpl: __PREFIX__ViewHelper {
}
