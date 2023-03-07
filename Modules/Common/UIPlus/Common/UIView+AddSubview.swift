//
//  UIView+AddSubview.swift
//  UIPlus
//
//  Created by Danila on 05.03.2023.
//

import UIKit
import SnapKit

public extension UIView {

    /// Добавляет view в иерархию и устанавливает constraints
    func addSubview(_ view: UIView, constraints: (ConstraintMaker) -> Void) {
        addSubview(view)
        view.snp.makeConstraints(constraints)
    }
}
