//
//  FeatureState.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation
//
//struct FeatureState: Codable {
//    let id, key: String
//    let l: Bool
//    let version: Int
//    let type: String
//    let value: Value
//    let strategies: [Strategy]
//}
//
//// MARK: - Strategy
//struct Strategy: Codable {
//    let id: String
//    let value: Value
//    let attributes: [Attribute]
//    let percentage: Int?
//}
//
//// MARK: - Attribute
//struct Attribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [Value]
//    let type: String
//    func getConditional() -> AttributeConditional {
//        switch conditional {
//        case "EQUALS":
//            return AttributeConditional.EQUALS
//        case "ENDS_WITH":
//            return AttributeConditional.ENDS_WITH
//        case "STARTS_WITH":
//            return AttributeConditional.STARTS_WITH
//        case "GREATER":
//            return AttributeConditional.GREATER
//        case "GREATER_EQUALS":
//            return AttributeConditional.GREATER_EQUALS
//        case "LESS":
//            return AttributeConditional.LESS
//        case "LESS_EQUALS":
//            return AttributeConditional.LESS_EQUALS
//        case "NOT_EQUALS":
//            return AttributeConditional.NOT_EQUALS
//        case "INCLUDES":
//            return AttributeConditional.INCLUDES
//        case "EXCLUDES":
//            return AttributeConditional.EXCLUDES
//        case "REGEX":
//            return AttributeConditional.REGEX
//        default:
//            return AttributeConditional.DEFAULT
//        }
//    }
//}
//
//enum Value: Codable {
//    case bool(Bool)
//    case integer(Int)
//    case string(String)
//    case json(String)
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if let x = try? container.decode(Bool.self) {
//            self = .bool(x)
//            return
//        }
//        if let x = try? container.decode(Int.self) {
//            self = .integer(x)
//            return
//        }
//        if let x = try? container.decode(String.self) {
//            self = .string(x)
//            return
//        }
//        throw DecodingError.typeMismatch(Value.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        switch self {
//        case .bool(let x):
//            try container.encode(x)
//        case .integer(let x):
//            try container.encode(x)
//        case .string(let x):
//            try container.encode(x)
//        case .json(let x):
//            try container.encode(x)
//        }
//    }
//}
