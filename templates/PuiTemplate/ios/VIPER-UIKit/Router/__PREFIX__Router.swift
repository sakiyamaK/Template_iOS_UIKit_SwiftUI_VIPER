//
//  __PREFIX__Router.swift
//  __TARGET__
//
//  Created by __USERNAME__ on __YEAR__/__MONTH__/__DAY__.
//

import UIKit

protocol __PREFIX__Wireframe: AnyObject {
}

final class __PREFIX__Router {
  private unowned let viewController: UIViewController

  private init(viewController: UIViewController) {
    self.viewController = viewController
  }

  static func assembleModules() -> UIViewController {
    let view = UIStoryboard.load__PREFIX__()
    let interactor = __PREFIX__Interactor()
    let router = __PREFIX__Router(viewController: view)
    let presenter = __PREFIX__Presenter(
      view: view,
      interactor: interactor,
      router: router
    )
    view.inject(presenter: presenter)
    return view
  }
}

extension __PREFIX__Router: __PREFIX__Wireframe {
}