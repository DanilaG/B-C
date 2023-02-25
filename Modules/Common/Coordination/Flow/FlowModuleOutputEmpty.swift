//
//  FlowModuleOutputEmpty.swift
//  Coordination
//
//  Created by Danila on 24.02.2023.
//

import Foundation

/// Output для модуля пользовательского пути не возвращающего результата
public final class FlowModuleOutputEmpty: FlowModuleOutput {
    public typealias Result = Void

    public var didComplete: Completion?

    /// Инициализатор output для модуля пользовательского пути не возвращающего результата
    public init() {}
}
