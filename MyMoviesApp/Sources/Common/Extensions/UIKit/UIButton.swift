//
//  UIButton.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import UIKit

extension UIButton {
    func setup(title: String, font: UIFont, textColor: UIColor) {
        self.setTitle(title,
                      for: .normal)
        self.setTitleColor(textColor,
                           for: .normal)
        self.titleLabel?.font = font
    }
}
