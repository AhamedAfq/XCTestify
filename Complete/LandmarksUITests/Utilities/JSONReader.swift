//
//  JSONReader.swift
//  LandmarksUITests
//
//  Created by Ashfak Ahamed Alauddeen on 04/02/25.
//  Copyright © 2025 Apple. All rights reserved.
//

import Foundation

class JSONReader{
    static func loadTestData<T: Decodable>(fileName: String, type: T.Type) -> T?{
        guard let url = Bundle(for: JSONReader.self).url(forResource: fileName, withExtension: "json") else{
            fatalError("File \(fileName) is not found")
        }
        
        do{
            let data = try Data(contentsOf: url)
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return decodedData
        }catch {
            print("Unable to parse file \(fileName) due to \(error.localizedDescription)")
            return nil
        }
        
    }
}
