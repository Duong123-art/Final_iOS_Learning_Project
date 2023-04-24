//
//  BaseCoordinator.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation
import UIKit

class BaseCoordinator<T: Route>: Coordinator {
    public var rootViewController: AnyObject? = nil
    public var navigation: BaseNavigationController?
    public var router: BaseRouter<T>?
    
    init(navigation: BaseNavigationController?) {
        self.navigation = navigation
        self.router = BaseRouter(move: transfrom)
    }
    
    func transformToRootViewController() {
        navigation?.pushViewController(rootViewController as! UIViewController, animated: true)
    }
    
    func setRootViewController(rootViewController: AnyObject) {
        self.rootViewController = rootViewController
    }
    
    open func transfrom(to route: T) {
        print("[LOGGER] transform in base component")
    }
}
