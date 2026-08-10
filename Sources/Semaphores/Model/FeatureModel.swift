//
//  FeatureModel.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

// MARK: - FeatureModel
struct Feature: Codable {
    let id, key: String?
    let type: String?
    let version: Int?
    let value: TypeValue?
    let strategies: [Strategys]?
}

// MARK: - Strategy
struct Strategys: Codable {
    let id: String?
    let value: TypeValue?
    let attributes: [Attribute]
}

// MARK: - Attribute
struct Attribute: Codable {
    let conditional, fieldName: String
    let values: [AttributeTypeValue]
    let type: String
}

enum TypeValue: Codable {
    case bool(Bool)
    case double(Double)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(TypeValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }

//Get safe Values
   var stringValue: String {
       switch self {
       case .string(let s):
           return s
       case .bool(let s):
           return "\(s)"
       case .double(let s):
           return "\(s)"
       }
   }
    var doubleValue: Double {
         switch self {
         case .double(let s):
             return s
         case .string(let s):
             return (Double(s) ?? 0.0)
         default:
             return 0.0
         }
     }
     
     var booleanValue: Bool {
         switch self {
         case .bool(let s):
             return s
         case .double(let s):
             return s == 1
         case .string(let s):
             let bool = (Int(s) ?? 0) == 1
             return bool
         }
     }

}

public enum AttributeTypeValue: Codable {
    case bool(Bool)
    case double(Double)
    case string(String)
    case date(String)
    case semeticNumber(String)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .date(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .semeticNumber(x)
            return
        }
        throw DecodingError.typeMismatch(TypeValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .double(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        case .date(let x):
            try container.encode(x)
        case .semeticNumber(let x):
            try container.encode(x)
        }
    }
    
    var stringValue: String {
        switch self {
        case .string(let s):
            return s
        case .bool(let s):
            return "\(s)"
        case .double(let s):
            return "\(s)"
        default:
            return ""
        }
    }
    var doubleValue: Double {
         switch self {
         case .double(let s):
             return s
         case .string(let s):
             return (Double(s) ?? 0.0)
         default:
             return 0.0
         }
     }
     
     var booleanValue: Bool {
         switch self {
         case .bool(let s):
             return s
         case .double(let s):
             return s == 1
         case .string(let s):
             let bool = (Int(s) ?? 0) == 1
             return bool
         default:
             return false
         }
     }

}
