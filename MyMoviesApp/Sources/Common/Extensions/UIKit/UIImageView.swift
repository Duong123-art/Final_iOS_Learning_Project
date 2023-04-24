//
//  UIImageView.swift
//  MyMoviesApp
//
//  Created by Quang Duong on 4/21/23.
//

import Foundation
import UIKit

extension UIImageView {
    func loadNetworkImage(from url: String) {
        let defaultImage = UIImage(named: "list.clipboard")
        guard let  imageURL = URL(string: url) else {
            self.image = defaultImage
            return
        }
        
        DispatchQueue.global().async { [weak self] in
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.sync {
                self?.image = data != nil ? UIImage(data: data!) : defaultImage
            }
        }
    }
}
