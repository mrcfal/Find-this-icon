//
//  Find_this_iconUITests.swift
//  Find-this-iconUITests
//
//  Created by Marco Falanga on 01/03/25.
//

import XCTest

final class Find_this_iconUITests: XCTestCase {
    func testAccessibilityAudits() throws {
        let app = XCUIApplication()
        app.launch()

        try app.performAccessibilityAudit()
    }
}
