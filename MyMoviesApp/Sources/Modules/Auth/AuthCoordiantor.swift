//
//  AuthCoordiantor.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation
enum AuthRoute: Route {
    case login
    case register
    case forgotPassword
}

class AuthCoordinator: BaseCoordinator<AuthRoute> {
    
    init(navigation: BaseNavigationController) {
        super.init(navigation: navigation)
        let viewModel = LoginViewModel(router: router)
        let rootAuthViewController = LoginViewController(viewModel: viewModel)
        self.setRootViewController(rootViewController: rootAuthViewController)
    }
    
    override func transfrom(to route: AuthRoute) {
        switch route {
        case .login:
            let viewModel = LoginViewModel(router: self.router)
            let loginViewController = LoginViewController(viewModel: viewModel)
            navigation?.pushViewController(loginViewController, animated: true)
        case .register:
            let viewModel = RegisterViewModel()
            let registerViewController = RegisterViewController(viewModel: viewModel)
            navigation?.pushViewController(registerViewController, animated: true)
            break
        case .forgotPassword:
            break
        }
    }
}
