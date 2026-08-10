//
//  FeatureRepository.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation

public protocol FeatureServiceProtocal {
    func fetchFromNetwork(networkDataSourceUrl: String, onFetched: @escaping (String) -> Void)
    func getBoolean(key: String,value : [Trait]) -> Bool
    func getBoolean(key: String,value : Trait) -> Bool
    func getBoolean(key: String) -> Bool
    
    func getString(key: String,value :  [Trait]) -> String
    func getString(key: String,value :  Trait) -> String
    func getString(key: String) -> String
    
    func getNumber(key: String,value :  [Trait]) -> Double
    func getNumber(key: String,value :  Trait) -> Double
    func getNumber(key: String) -> Double
    
    func getJson(key: String,value :  [Trait])->  String
    func getJson(key: String,value :  Trait) -> String
    func getJson(key: String) -> String
}
 
