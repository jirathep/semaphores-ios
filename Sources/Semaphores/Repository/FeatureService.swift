//
//  FeatureService.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation

public class FeatureService: FeatureServiceProtocal {
  
    private var localDataSource: PreferencesDataSourceProtocal = PreferencesDataSource()
    private var networkDataSource: NetworkDataSourceProtocal = NetworkDataSource()

    public func fetchFromNetwork(networkDataSourceUrl: String, onFetched:@escaping (String) -> Void) {
        self.networkDataSource.fetchFeatures( onFetched: { json in
            self.localDataSource.setFeatureJson(json:json)
            onFetched(json)
        },networkDataSourceUrl:networkDataSourceUrl)
    }
    
    public func getBoolean(key: String, value: [Trait]) -> Bool {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features == nil {return DEFAULT_BOOLEAN}
        let data = Strategies().getBooleanFeatureStateByKey(key:key,features: features! )
        if data==nil {return DEFAULT_BOOLEAN}
        return Strategies().getBooleanFeatureByTraits(features: data!, traits: value) ?? DEFAULT_BOOLEAN
    }
    
    public func getBoolean(key: String, value: Trait) -> Bool {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_BOOLEAN}
        let data = Strategies().getBooleanFeatureStateByKey(key:key,features: features!)
        if data==nil {return DEFAULT_BOOLEAN}
        return Strategies().getBooleanFeatureByTraits(features: data!, traits: [value]) ?? DEFAULT_BOOLEAN
    }
    
    public func getBoolean(key: String) -> Bool {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        let data = Strategies().getBooleanFeatureStateByKey(key:key,features: features!)
        if data==nil {return DEFAULT_BOOLEAN}
        return Strategies().getBooleanFeatureByTraits(features: data!, traits: []) ?? DEFAULT_BOOLEAN
    }
    
    public func getString(key: String, value: [Trait]) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_STRING}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: value) ?? DEFAULT_STRING
    }
    public func getString(key: String, value: Trait) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_STRING}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: [value]) ?? DEFAULT_STRING
    }
    public func getString(key: String) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_STRING}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: []) ?? DEFAULT_STRING
    }
    
    public func getNumber(key: String, value: [Trait]) -> Double {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_NUMBER}
        let data = Strategies().getNumberFeatureStateByKey(key:key,features: features!)
        return Strategies().getNumberFeatureByTraits(features: data!, traits: value) ?? DEFAULT_NUMBER
    }
    public func getNumber(key: String, value: Trait) -> Double {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_NUMBER}
        let data = Strategies().getNumberFeatureStateByKey(key:key,features: features!)
        return Strategies().getNumberFeatureByTraits(features: data!, traits: [value]) ?? DEFAULT_NUMBER
    }
    public func getNumber(key: String) -> Double {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_NUMBER}
        let data = Strategies().getNumberFeatureStateByKey(key:key,features: features!)
        return Strategies().getNumberFeatureByTraits(features: data!, traits: []) ?? DEFAULT_NUMBER
    }
    
    public func getJson(key: String, value: [Trait]) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_JSON}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: value) ?? DEFAULT_JSON
    }
    public func getJson(key: String, value: Trait) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_JSON}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: [value]) ?? DEFAULT_JSON
    }
    public func getJson(key: String) -> String {
        let features = FeatureConverter().convertFeatures(jsonData:localDataSource.getFeaturesJson())
        if features==nil {return DEFAULT_JSON}
        let data = Strategies().getStringFeatureStateByKey(key:key,features: features!)
        return Strategies().getStringFeatureByTraits(features: data!, traits: []) ?? DEFAULT_JSON
    }
    
    
     let  DEFAULT_BOOLEAN = false
     let  DEFAULT_NUMBER = 0.0
     let  DEFAULT_STRING = ""
     let  DEFAULT_JSON = ""
    
}
