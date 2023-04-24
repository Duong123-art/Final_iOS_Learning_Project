//
//  BaseRouter.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation

class BaseRouter<T: Route>: Router {
    typealias RouteType = T
    private var move: ((T) -> Void)
    
    init(move: @escaping ((T) -> Void)) {
        self.move = move
    }
    
    
    func trigger(_ route: T) {
        self.move(route)
    }
}

