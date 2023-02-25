//
//  FlowProvider.swift
//  Coordination
//
//  Created by Danila on 24.02.2023.
//

@_exported import Swinject

/// Протокол отображения элементы координации
public protocol FlowDisplay {
    /// Контроллер навигации
    var navigation: UINavigationController { get }
    /// Сборщик
    var assembler: Assembler { get }
}
