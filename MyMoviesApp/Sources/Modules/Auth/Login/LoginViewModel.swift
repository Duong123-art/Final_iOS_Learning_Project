//
//  LoginViewModel.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation

class LoginViewModel: ViewModelType {
    private var router: BaseRouter<AuthRoute>?
    
    // MARK: Handle Events with callBack
    
    init(router: BaseRouter<AuthRoute>?) {
        self.router = router
    }
    
    func moveToRegister() {
        router?.trigger(.register)
    }
}
