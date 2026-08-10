//
//  Evaluate.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

public class Evaluate {
 
    func evaluateBoolean(conditional : String, options :[AttributeTypeValue], value : Bool) -> Bool{
        switch conditional {
        case AttributeConditionalType.EQUALS.rawValue :
            return !options.filter { $0.booleanValue == value }.isEmpty
        case AttributeConditionalType.NOT_EQUALS.rawValue :
            return options.filter { $0.booleanValue == value }.isEmpty
        default: return false
        }
    }
    
    func evaluateString(conditional : String, options :[AttributeTypeValue], value : String) -> Bool{
        switch conditional {
        case AttributeConditionalType.EQUALS.rawValue :
            return !options.filter { $0.stringValue == value }.isEmpty
        case AttributeConditionalType.NOT_EQUALS.rawValue :
            return options.filter { $0.stringValue == value }.isEmpty
        case AttributeConditionalType.ENDS_WITH.rawValue :
            return !options.filter {value.hasPrefix($0.stringValue)}.isEmpty
        case AttributeConditionalType.STARTS_WITH.rawValue :
            return !options.filter {value.hasSuffix($0.stringValue)}.isEmpty
        case AttributeConditionalType.LESS.rawValue :
            return !options.filter { value<$0.stringValue }.isEmpty
        case AttributeConditionalType.LESS_EQUALS.rawValue :
            return !options.filter { value<=$0.stringValue }.isEmpty
        case AttributeConditionalType.GREATER.rawValue :
            return !options.filter {value>$0.stringValue }.isEmpty
        case AttributeConditionalType.GREATER_EQUALS.rawValue :
            return !options.filter {value>=$0.stringValue }.isEmpty
        case AttributeConditionalType.EXCLUDES.rawValue :
            return options.filter {($0.stringValue).contains(value)}.isEmpty
        case AttributeConditionalType.INCLUDES.rawValue :
            return !options.filter {($0.stringValue).contains(value)}.isEmpty
        case AttributeConditionalType.REGEX.rawValue :
            return !options.filter{
                let regex = try? NSRegularExpression(pattern:$0.stringValue)
                let range = NSRange(location: 0, length: value.utf16.count)
                return regex?.firstMatch(in: value, options: [], range: range) != nil
            }.isEmpty
            
        default:
            return false
        }
    }
    
    func evaluateNumber(conditional : String, options :[AttributeTypeValue], value : Double) -> Bool {
        switch conditional {
        case AttributeConditionalType.EQUALS.rawValue:
            return !options.filter { $0.doubleValue == value }.isEmpty
        case AttributeConditionalType.NOT_EQUALS.rawValue:
            return options.filter { $0.doubleValue == value }.isEmpty
        case AttributeConditionalType.LESS.rawValue:
            return !options.filter { value<$0.doubleValue }.isEmpty
        case AttributeConditionalType.LESS_EQUALS.rawValue:
            return !options.filter { value<=$0.doubleValue }.isEmpty
        case AttributeConditionalType.GREATER.rawValue:
            return !options.filter {value>$0.doubleValue }.isEmpty
        case AttributeConditionalType.GREATER_EQUALS.rawValue:
            return !options.filter {value>=$0.doubleValue }.isEmpty
        case AttributeConditionalType.EXCLUDES.rawValue:
            return options.filter {$0.doubleValue == value}.isEmpty
        case AttributeConditionalType.INCLUDES.rawValue:
            return !options.filter {$0.doubleValue == value}.isEmpty
        default:
            return false
        }
    }
    
    
    func evaluateSemanticVersion(conditional: String, options:[AttributeTypeValue], value: String) -> Bool{
        switch conditional {
        case AttributeConditionalType.EQUALS.rawValue :
            let result = options.allSatisfy { $0.stringValue.isVersion(equalTo: value)}
            return result
        case AttributeConditionalType.NOT_EQUALS.rawValue :
            let result = !options.allSatisfy { $0.stringValue.isVersion(equalTo: value)}
            return result
        case AttributeConditionalType.LESS.rawValue :
            let result = options.allSatisfy { $0.stringValue.isVersion(greaterThan: value)}
            return result
        case AttributeConditionalType.LESS_EQUALS.rawValue :
            let result = options.allSatisfy { $0.stringValue.isVersion(greaterThanOrEqualTo: value)}
            return result
        case AttributeConditionalType.GREATER.rawValue :
            let result = options.allSatisfy { $0.stringValue.isVersion(lessThan: value)}
            return result
        case AttributeConditionalType.GREATER_EQUALS.rawValue :
            let result = options.allSatisfy { $0.stringValue.isVersion(lessThanOrEqualTo: value)}
            return result
        default:
            return false
        }
    }
    
    func evaluateDateTime(conditional : String, options :[AttributeTypeValue], value : String) -> Bool{
        guard let date = value.toDate() else {
                 return false
             }
        switch conditional {
        case AttributeConditionalType.EQUALS.rawValue :
            return !options.filter {
            guard let optionDate = $0.stringValue.toDate() else {return false}
            return(date.compare(optionDate) == ComparisonResult.orderedSame)}.isEmpty
        case AttributeConditionalType.NOT_EQUALS.rawValue :
            return options.filter { $0.stringValue == value }.isEmpty
        case AttributeConditionalType.LESS.rawValue :
            return !options.filter { value<$0.stringValue }.isEmpty
        case AttributeConditionalType.LESS_EQUALS.rawValue :
            return !options.filter { value<=$0.stringValue }.isEmpty
        case AttributeConditionalType.GREATER.rawValue :
            return !options.filter {value>$0.stringValue }.isEmpty
        case AttributeConditionalType.GREATER_EQUALS.rawValue :
            return !options.filter {value>=$0.stringValue }.isEmpty
        default:
            return false
        }
    }
}
