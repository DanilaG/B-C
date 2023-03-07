//
//  MainFlowAssembly.swift
//  B&C
//
//  Created by Danila on 24.02.2023.
//

import Coordination
import Swinject

/// Сборщик основного пользовательского пути
final class MainFlowModuleAssembly: Assembly {

    func assemble(container: Swinject.Container) {

        container.register(MainFlowModule.self) { (_, input: MainFlowModuleInputData) in

            let provider = MainFlowProvider(
                navigation: input.navigation,
                assembler: Assembler()
            )
            let coordinator = MainCoordinator(provider: provider)

            provider.output = coordinator

            return MainFlowModule(
                coordinator: coordinator,
                output: FlowModuleOutputEmpty()
            )
        }
    }
}
