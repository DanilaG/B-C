//
//  MainScreenPresenterTests.swift
//  Pods
//
//  Created by Danila on 07.03.2023.
//

import Quick
import Nimble
import SwiftyMocky

@testable import MainScreen

class MainScreenPresenterTests: QuickSpec {
    override func spec() {
        describe("MainScreenPresenter") {
            let presenter = MainScreenPresenter()
            let presenterCallbacks = MainScreenPresenterCallbacks(presenter)

            context("did tap start game") {
                presenter.didTapStartGame()

                it("it call start game") {
                    expect(presenterCallbacks.startGame).to(beTrue())
                }
            }

            context("did tap rules") {
                presenter.didTapRules()

                it("it call show rules") {
                    expect(presenterCallbacks.showRules).to(beTrue())
                }
            }
        }
    }

    class MainScreenPresenterCallbacks {
        var startGame = false
        var showRules = false

        init(_ presenter: MainScreenPresenter) {
            presenter.startGame = {
                self.startGame = true
            }

            presenter.showRules = {
                self.showRules = true
            }
        }
    }
}
