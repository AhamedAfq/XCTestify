//
//  BaseTest.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        if let hasSucceeded = self.testRun?.hasSucceeded, !hasSucceeded{
            takeScreenShot(name: self.name)
        }
        app = nil
        try super.tearDownWithError()
    }
    
    func takeScreenShot(name: String){
        let screenshot = app.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
