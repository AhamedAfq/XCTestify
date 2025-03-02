//
//  FeaturedPageElements.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

class FeaturedPageElements {
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var featuredButton: XCUIElement{
        return app.buttons["categoryFeatured"]
    }
    
    var listButton: XCUIElement{
        return app.buttons["categoryList"]
    }
    
}
