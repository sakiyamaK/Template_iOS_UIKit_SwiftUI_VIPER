//
//  __PREFIX__Router.swift
//  __TARGET__
//
//  Created by __USERNAME__ on __YEAR__/__MONTH__/__DAY__.
//

import SwiftUI
import UIKit

protocol __PREFIX__Wireframe: AnyObject {
}

final class __PREFIX__Router {
  private unowned let viewController: UIViewController

  private init(viewController: UIViewController) {
    self.viewController = viewController
  }

  static func assembleModules() -> UIViewController {
    let interactor = __PREFIX__Interactor()
    let viewHelper = __PREFIX__ViewHelperImpl()
    let view = __PREFIX__View(viewHelper: viewHelper)
    let viewController = UIHostingController(rootView: view)
    let router = __PREFIX__Router(viewController: viewController)
    let presenter = __PREFIX__Presenter(
      view: viewHelper,
      interactor: interactor,
      router: router
    )
    viewHelper.inject(presenter: presenter)
    return viewController
  }
}

extension __PREFIX__Router: __PREFIX__Wireframe {
}