//
//  TestData.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import Foundation

struct TestData: Codable {
    let validLogin, invalidLogin: ValidLogin
}

// MARK: - ValidLogin
struct ValidLogin: Codable {
    let username, password: String
}
