//
//  Then.swift
//  FoundationPlus
//
//  Created by Danila on 05.03.2023.
//

import Foundation

/// Протокол Then-метода
public protocol Then {}

public extension Then where Self: AnyObject {

    /// Позволяет конфигурировать объект
    func then(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension NSObject: Then {}
