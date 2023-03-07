//
//  MainScreenPresenter.swift
//  MainScreen
//
//  Created by Danila on 25.02.2023.
//

import Foundation

/// Presenter главного экрана
final class MainScreenPresenter: MainScreenModuleOutput {
    var startGame: (() -> Void)?
    var showRules: (() -> Void)?
}

// MARK: - MainScreenViewOutput

extension MainScreenPresenter: MainScreenViewOutput {
    func didTapStartGame() {
        startGame?()
    }

    func didTapRules() {
        showRules?()
    }
}
