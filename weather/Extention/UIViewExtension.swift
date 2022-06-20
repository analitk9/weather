//
//  UIViewExtension.swift
//  weather
//
//  Created by Denis Evdokimov on 6/15/22.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]){
        views.forEach { addSubview($0)}
    }
}
