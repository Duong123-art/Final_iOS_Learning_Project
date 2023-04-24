//
//  Route.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation

protocol Route {}

protocol Router {
    associatedtype RouteType: Route
    func trigger (_ route: RouteType)
}
