//
//  MainScreenViewController.swift
//  MainScreen
//
//  Created by Danila on 25.02.2023.
//

import FoundationPlus
import UIKit
import UIPlus
import SnapKit

// sourcery: AutoMockable
/// Output view главного экрана
protocol MainScreenViewOutput {
    /// Вызывается при тапе по главному экрану
    func didTapStartGame()
    /// Вызывается при тапе по правилам
    func didTapRules()
}

/// ViewController главного экрана
final class MainScreenViewController: UIViewController {

    private enum Const {
        typealias Text = MainScreenStrings

        enum Size {
            static let verticalOffset: CGFloat = 20.0
        }

        enum Animation {
            static let delay: TimeInterval = 0.25
            static let duration: TimeInterval = 1
            static let damping: CGFloat = 3
            static let velocity: CGFloat = 0
        }
    }

    private var titleTopConstraint: Constraint?

    private let titleLabel = UILabel().then {
        $0.text = Const.Text.title
        $0.font = .preferredFont(forTextStyle: .title1)
    }

    private lazy var playButton = PlayButton().then {
        $0.addTarget(self, action: #selector(selectGame), for: .touchUpInside)
        $0.isHidden = true
    }

    private lazy var rulesButton = UIButton(type: .system).then {
        $0.setTitle(Const.Text.rules, for: .normal)
        $0.addTarget(self, action: #selector(selectRules), for: .touchUpInside)
        $0.titleLabel?.font = .preferredFont(forTextStyle: .callout)
        $0.setTitleColor(.secondaryLabel, for: .normal)
        $0.isHidden = true
    }

    private let output: MainScreenViewOutput

    /// Инициализатор ViewController-а главного экрана
    ///
    /// - Parameters:
    ///  - output: объект для обработки результатов работы экрана
    init(output: MainScreenViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if isBeingPresented || isMovingToParent {
            startAnimation()
        }
    }

    private func setupSubviews() {
        view.addSubview(titleLabel) {
            $0.centerX.equalToSuperview()
            titleTopConstraint = $0.centerY.equalToSuperview().constraint
        }

        view.addSubview(playButton) {
            $0.center.equalToSuperview()
        }

        view.addSubview(rulesButton) {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
                .offset(-Const.Size.verticalOffset)
        }
    }
}

// MARK: - Обработка кнопок

private extension MainScreenViewController {

    @objc
    private func selectGame() {
        output.didTapStartGame()
    }

    @objc
    private func selectRules() {
        output.didTapRules()
    }
}

// MARK: - Анимация

private extension MainScreenViewController {

    private func startAnimation() {
        startTitleAnimation()
        startPlayButtonAnimation()
        startRulesButtonAnimation()
    }

    private func startTitleAnimation() {
        UIView.animate(
            withDuration: Const.Animation.duration,
            delay: Const.Animation.delay,
            usingSpringWithDamping: Const.Animation.damping,
            initialSpringVelocity: Const.Animation.velocity,
            options: [.curveEaseInOut],
            animations: {
                self.moveTitleToTop()
            }
        )
    }

    private func startPlayButtonAnimation() {
        self.playButton.alpha = 0
        UIView.animate(
            withDuration: Const.Animation.duration,
            delay: Const.Animation.delay + 0.15,
            usingSpringWithDamping: Const.Animation.damping,
            initialSpringVelocity: Const.Animation.velocity,
            options: [.allowUserInteraction, .curveEaseInOut]
        ) {
            self.playButton.isHidden = false
            self.playButton.alpha = 1
        }
    }

    private func startRulesButtonAnimation() {
        self.rulesButton.alpha = 0
        UIView.animate(
            withDuration: Const.Animation.duration,
            delay: Const.Animation.delay,
            usingSpringWithDamping: Const.Animation.damping,
            initialSpringVelocity: Const.Animation.velocity,
            options: [.allowUserInteraction, .curveEaseInOut]
        ) {
            self.rulesButton.isHidden = false
            self.rulesButton.alpha = 1
        }
    }

    private func moveTitleToTop() {
        titleTopConstraint?.deactivate()
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
                .offset(Const.Size.verticalOffset)
        }
        view.layoutIfNeeded()
    }
}
