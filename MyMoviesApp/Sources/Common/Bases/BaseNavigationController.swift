//
//  BaseNavigationController.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/14/23.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationBar.backgroundColor = .white
        navigationBar.barTintColor = .white
        
        navigationBar.layer.masksToBounds = false
        navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        navigationBar.layer.shadowOpacity = 0.5
        navigationBar.layer.shadowOffset = .init(width: 0, height: 1.5)
        navigationBar.layer.shadowRadius = 0.5
        
        // Remove back's title
        let backTitleOffste = UIOffset(horizontal: -UIScreen.main.bounds.width, vertical: .zero)
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(backTitleOffste, for: .default)
        
    }
}

