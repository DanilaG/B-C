//
//  ScreenModule.swift
//  Coordination
//
//  Created by Danila on 24.02.2023.
//

import UIKit

/// Модуль экрана
open class ScreenModule<ModuleOutput> {
    /// View контроллер модуля
    public let viewController: UIViewController
    /// Результаты работы модуля
    public let output: ModuleOutput

    /// Инициализатор модуля экрана
    ///
    /// - Parameters:
    ///     - viewController: view контроллер модуля
    ///     - output: результаты работы модуля
    public init(viewController: UIViewController, output: ModuleOutput) {
        self.viewController = viewController
        self.output = output
    }
}
