//
//  MainFlowProvider.swift
//  B&C
//
//  Created by Danila on 24.02.2023.
//

import Coordination

/// Входные параметры основного flow приложения
protocol MainFlowProviderInput {
    /// Показывает главный экран
    func showMainScreen()
}

/// Основное flow приложения
final class MainFlowProvider: FlowDisplay {

    let navigation: UINavigationController
    let assembler: Assembler

    /// Инициализатор основного flow приложения
    ///
    /// - Parameters:
    ///     - navigation: контроллер навигации
    ///     - assembler: сборщик
    init(navigation: UINavigationController, assembler: Assembler) {
        self.navigation = navigation
        self.assembler = assembler
    }
}

extension MainFlowProvider: MainFlowProviderInput {

    func showMainScreen() {
        #warning("TODO: запуск координатора игры")
        navigation.pushViewController(UIViewController(), animated: false)
    }
}
