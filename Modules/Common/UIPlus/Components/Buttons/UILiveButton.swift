//
//  UILiveButton.swift
//  UIPlus
//
//  Created by Danila on 05.03.2023.
//

import Foundation

/// Кнопка изменяющая размеры при нажатии и отпускании
open class UILiveButton: UIButton {

    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        animate(transform: .identity.scaledBy(x: 0.95, y: 0.95))
        super.touchesBegan(touches, with: event)
    }

    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        animate(transform: .identity)
        super.touchesEnded(touches, with: event)
    }

    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        animate(transform: .identity)
        super.touchesCancelled(touches, with: event)
    }

    private func animate(transform: CGAffineTransform) {
        UIView.animate(
            withDuration: 0.15,
            delay: 0,
            usingSpringWithDamping: 3,
            initialSpringVelocity: 0,
            options: [.allowUserInteraction, .curveEaseIn],
            animations: {
                self.transform = transform
            },
            completion: nil
        )
    }
}
