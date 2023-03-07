//
//  MainScreenAssembler.swift
//  MainScreen
//
//  Created by Danila on 26.02.2023.
//

import Swinject

/// Сборщик главного экрана приложения
public final class MainScreenAssembler: Assembly {

    public func assemble(container: Swinject.Container) {

        container.register(MainScreenModule.self) { _ in

            let presenter = MainScreenPresenter()
            let viewController = MainScreenViewController(output: presenter)

            return MainScreenModule(
                viewController: viewController,
                output: presenter
            )
        }
    }

    public init() {}
}
