//
//  MainCoordinatorTests.swift
//  BAndCTests
//
//  Created by Danila on 25.02.2023.
//

import Quick
import Nimble
import SwiftyMocky

@testable import BAndC

class MainCoordinatorTests: QuickSpec {
    override func spec() {
        describe("MainCoordinator") {
            let provider = MainFlowProviderInputMock()
            let coordinator = MainCoordinator(provider: provider)

            context("when it start") {
                coordinator.start()
                
                it("show main screen") {
                    provider.verify(.showMainScreen())
                }
            }
        }
    }
}
