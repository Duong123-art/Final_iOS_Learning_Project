//
//  LoginViewController.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import UIKit
import SnapKit

class LoginViewController: BaseViewController<LoginViewModel> {
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var loginSection: UIView!
    @IBOutlet weak var loginText: UILabel!
    @IBOutlet weak var continueButotn: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        self.container.backgroundColor = .black
        navigationController?.navigationBar.isHidden = true
        
        self.loginText.text = "Hi!"
        
        self.loginSection.layer.borderWidth = 1
        self.loginSection.layer.borderColor = UIColor.clear.cgColor
        self.loginSection.layer.cornerRadius = 6
        
        loginSection.backgroundColor = .white.withAlphaComponent(0.3)
        
        self.continueButotn.layer.cornerRadius = 6
        
        self.textField.placeholder = "Email"

    }

}
