//
//  FeaturedPage.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

class FeaturedPage {

    var app: XCUIApplication
    var featuredPageElements: FeaturedPageElements
    
    init(app: XCUIApplication) {
        self.app = app
        self.featuredPageElements = FeaturedPageElements(app: app)
    }
    
    func navigateToListPage(){
        XCTAssertTrue(featuredPageElements.featuredButton.waitForExistence(timeout: 5), "Featured button must be displayed")
        featuredPageElements.listButton.tap()
    }
}
