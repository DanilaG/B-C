//
//  MainCoordinator.swift
//  B&C
//
//  Created by Danila on 24.02.2023.
//

import Coordination

/// Основной координатор приложения
final class MainCoordinator: Coordinator {

    private let provider: MainFlowProviderInput

    /// Инициализатор основного координатора приложения
    init(provider: MainFlowProviderInput) {
        self.provider = provider
    }

    func start() {
        provider.showMainScreen()
    }
}
