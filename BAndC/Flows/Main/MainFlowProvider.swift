//
//  MainFlowProvider.swift
//  B&C
//
//  Created by Danila on 24.02.2023.
//

import Coordination
import MainScreen

// sourcery: AutoMockable
/// Входные параметры основного flow приложения
protocol MainFlowProviderInput {
    /// Показывает главный экран
    func showMainScreen()
    /// Показывает экран правил
    func showRules()
    /// Начинает flow игры
    func startGameFlow()
}

// sourcery: AutoMockable
/// Выходные параметры основного flow приложения
protocol MainFlowProviderOutput: AnyObject {
    /// Вызывается при запросе показа правил
    func didSelectRules()
    /// Вызывается при запросе начать игру
    func didSelectStartGame()
}

/// Основное flow приложения
final class MainFlowProvider: FlowDisplay {

    weak var output: (MainFlowProviderOutput)?
    let navigation: UINavigationController
    let assembler: Assembler

    /// Инициализатор основного flow приложения
    ///
    /// - Parameters:
    ///     - navigation: контроллер навигации
    ///     - assembler: сборщик
    init(
        navigation: UINavigationController,
        assembler: Assembler
    ) {
        let assemblers = [
            MainScreenAssembler()
        ]

        self.navigation = navigation
        self.assembler = Assembler(assemblers, parent: assembler)
    }
}

extension MainFlowProvider: MainFlowProviderInput {

    func showMainScreen() {
        guard let module = assembler.resolver.resolve(MainScreenModule.self) else { return }

        module.output.showRules = { [weak output] in
            output?.didSelectRules()
        }

        module.output.startGame = { [weak output] in
            output?.didSelectStartGame()
        }

        navigation.pushViewController(module.viewController, animated: false)
    }

    func showRules() {
        #warning("TODO")
    }

    func startGameFlow() {
        #warning("TODO")
    }
}
