//
//  UIStackView.swift
//  weather
//
//  Created by Denis Evdokimov on 6/16/22.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { addArrangedSubview($0)}
    }
}
