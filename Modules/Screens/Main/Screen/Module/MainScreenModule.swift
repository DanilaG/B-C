//
//  MainScreenModule.swift
//  MainScreen
//
//  Created by Danila on 26.02.2023.
//

import Coordination

/// Результаты работы главного экрана
public protocol MainScreenModuleOutput: AnyObject {
    /// Callback для начала игры
    var startGame: (() -> Void)? { get set }
    /// Callback для отображения правил
    var showRules: (() -> Void)? { get set }
}

/// Модуль главного экрана
public final class MainScreenModule: ScreenModule<MainScreenModuleOutput> {}
