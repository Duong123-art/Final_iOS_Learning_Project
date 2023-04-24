//
//  Coordinator.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation

public protocol Coordinator: AnyObject {
    func transformToRootViewController()
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.transformToRootViewController()
    }
}
