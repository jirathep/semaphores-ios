//
//  FeatureConverter.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

public class FeatureConverter{
    
   func convertToRaw(jsonData: [Feature]) -> String {
       // Encode
       let r = try! JSONEncoder().encode(jsonData)
       return String(data: r, encoding: .utf8)!
    }
    
    // Results
    func convertFeatures(jsonData : String) -> [Feature]? {
        let decoder = JSONDecoder()
        if let data = jsonData.data(using: .utf8) {
            do {
                return try decoder.decode([Feature].self, from: data)
            } catch let DecodingError.dataCorrupted(context) {
                print(context)
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                print("error: ", error)
            }
        }
        return nil
    }
}


