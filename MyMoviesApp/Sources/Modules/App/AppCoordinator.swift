//
//  AppCoordinator.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation
import UIKit

enum CoordinatorModule: Route {
    case auth
    case home
}

class AppCoordinator: Coordinator {
    public var navigation: BaseNavigationController
    
    init(navigation: BaseNavigationController) {
        self.navigation = navigation
    }
    
    func transformToRootViewController() {
        let authCoordinator = AuthCoordinator(navigation: navigation)
        coordinate(to: authCoordinator)
    }
    
    func transfrom(to coordinator: CoordinatorModule) {
        switch coordinator {
        case .auth:
            let authCoordinator = AuthCoordinator(navigation: navigation)
            authCoordinator.transformToRootViewController()
        case .home:
            break
        }
    }
}
