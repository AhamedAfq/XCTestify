//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import XCTest

final class LandmarksUITests: BaseTest {
    
    var featuredPage: FeaturedPage!
    var testData: TestData!
    override func setUpWithError() throws {
        try super.setUpWithError()
        featuredPage = FeaturedPage(app: self.app)
        testData = JSONReader.loadTestData(fileName: "TestData", type: TestData.self)
    }
    
    func testNavigationToListPage(){
        if let validLogin = testData?.validLogin{
            print("validLogin userName \(validLogin.username)")
        }
        featuredPage.navigateToListPage()
    }
}
