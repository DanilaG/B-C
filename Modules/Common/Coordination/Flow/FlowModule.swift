//
//  FlowModule.swift
//  Coordination
//
//  Created by Danila on 24.02.2023.
//

import Foundation

/// Тип результатов работы flow
public protocol FlowModuleOutput {
    /// Тип возращаемого результата при завершении flow
    associatedtype Result

    /// Тип callback-а вызываемого при завершении работы пути
    /// Возвращает результат работы flow
    typealias Completion = (Result) -> Void

    /// Вызывается при завершении пользовательского пути
    var didComplete: Completion? { get set }
}

/// Класс пользовательского пути
open class FlowModule<ModuleOutput: FlowModuleOutput> {

    /// Координатор flow
    public let coordinator: Coordinator
    /// Результаты работы flow
    public let output: ModuleOutput

    /// Инициализатор класса пользовательского пути
    ///
    /// - Parameters:
    ///     - coordinator: координатор пользовательского пути
    ///     - output: объект обрабатывающий результаты работы пользовательского пути
    public init(coordinator: Coordinator, output: ModuleOutput) {
        self.coordinator = coordinator
        self.output = output
    }
}
