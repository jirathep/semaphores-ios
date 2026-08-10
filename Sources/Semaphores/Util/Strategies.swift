//
//  Strategies.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

public class Strategies{
    
   func getBooleanFeatureStateByKey(
       key: String,
       features: [Feature]
   ) -> Feature? {
       return features.first(where: { data in
           data.key == key
       })
   }
    
    func getStringFeatureStateByKey(
        key: String,
        features: [Feature]
    ) -> Feature? {
        return features.first(where: { data in
            data.key == key
        })
    }
    
    func getNumberFeatureStateByKey(
        key: String,
        features: [Feature]
    ) -> Feature? {
        return features.first(where: { data in
            data.key == key
        })
    }
    
    func getBooleanFeatureByTraits(
       features: Feature,
       traits: [Trait]
    ) -> Bool? {
        guard let strategies = features.strategies else {
            return features.value?.booleanValue
        }
        for strategy in strategies {
            if strategy.attributes.allSatisfy({ matchAttribute(attribute: $0, traits: traits) }) {
                return strategy.value?.booleanValue
            } else {
                continue
            }
        }
        return features.value?.booleanValue
    }
    
  func getStringFeatureByTraits(
       features: Feature,
       traits: [Trait]
   ) -> String? {
       guard let strategies = features.strategies else {
           return features.value?.stringValue
       }
       for strategy in strategies {
           if strategy.attributes.allSatisfy({ matchAttribute(attribute: $0, traits: traits) }) {
               return strategy.value?.stringValue
           } else {
               continue
           }
       }
       return features.value?.stringValue
   }
    
    
  func getNumberFeatureByTraits(
       features: Feature,
       traits: [Trait]
   ) -> Double? {
       guard let strategies = features.strategies else {
           return features.value?.doubleValue
       }
       for strategy in strategies {
           if strategy.attributes.allSatisfy({ matchAttribute(attribute: $0, traits: traits) }) {
               return strategy.value?.doubleValue
           } else {
               continue
           }
       }
       return features.value?.doubleValue
   }
    
    
    func matchAttribute(
           attribute: Attribute,
           traits: [Trait]
    )-> Bool {
        if let traitMatch = traits.first(where: { $0.name == attribute.fieldName }) {
            switch traitMatch.value {
            case .string(let value):
                return Evaluate().evaluateString(conditional: attribute.conditional, options: attribute.values , value: value)
            case .semeticNumber(let value):
                return Evaluate().evaluateSemanticVersion(conditional: attribute.conditional, options: attribute.values, value: value)
            case .double(let value):
                return Evaluate().evaluateNumber(conditional: attribute.conditional, options: attribute.values, value: value)
            case .date(let value):
                return Evaluate().evaluateDateTime(conditional: attribute.conditional, options: attribute.values, value: value)
            case .bool(let value):
                return Evaluate().evaluateBoolean(conditional: attribute.conditional, options: attribute.values, value: value)
            }
        }
        return false
    }
}