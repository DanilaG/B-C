//
//  UIPlayButton.swift
//  MainScreen
//
//  Created by Danila on 05.03.2023.
//

import UIPlus

/// Кнопка начала игры
final class PlayButton: UILiveButton {

    private enum Const {
        typealias Text = MainScreenStrings

        enum Image {
            static let play = UIImage(systemName: "play.fill")
        }

        enum Size {
            static let playIcon: CGFloat = 100
        }
    }

    /// Инициализатор кнопки начала игры
    ///
    /// - Parameters:
    ///  - frame: размер frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupSubviews() {
        let image = UIImageView(image: Const.Image.play).then {
            $0.tintColor = .label
        }
        addSubview(image) {
            $0.height.width.equalTo(Const.Size.playIcon)
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.left.greaterThanOrEqualToSuperview()
            $0.right.lessThanOrEqualToSuperview()
        }

        let title = UILabel().then {
            $0.textAlignment = .center
            $0.text = Const.Text.playButton
            $0.font = .preferredFont(forTextStyle: .largeTitle)
        }
        addSubview(title) {
            $0.top.equalTo(image.snp.bottom)
            $0.bottom.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.left.greaterThanOrEqualToSuperview()
            $0.right.lessThanOrEqualToSuperview()
        }
    }
}
