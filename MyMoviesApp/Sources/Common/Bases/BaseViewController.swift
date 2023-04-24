//
//  BaseViewController.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/14/23.
//

import UIKit

class BaseViewController<T: ViewModelType>: UIViewController {
    var viewModel: T
    
    init(viewModel: T) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    deinit {
        debugPrint("Deinit view controller")
    }
}
