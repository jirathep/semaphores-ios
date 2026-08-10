//
//  FeatureStrategy.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation
//
//
//enum Strategy {
//    case BOOLEAN([BooleanStrategy])
//    case STRING([StringStrategy])
//    case NUMBER([NumberStrategy])
//    case JSON([JsonStrategy])
//
//    enum type: String, Codable {
//        case BOOLEAN="BOOLEAN" , STRING , NUMBER , JSON
//    }
//
//}
//
//
//extension Strategy: Codable {
//    // 1
//    private enum CodingKeys: String, CodingKey {
//        case type, strategies
//    }
//
//    // 2
//        init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//                  let type = try container.decode(Strategy.type.self, forKey: .type)
//
//
//            switch type {
//            case  .STRING :
//                let values = try container.decode([StringStrategy].self, forKey: .strategies)
//                    self = .STRING(values)
//            case  .BOOLEAN:
//                let values = try container.decode([BooleanStrategy].self, forKey: .strategies)
//                    self = .BOOLEAN(values)
//            case  .JSON:
//                let values = try container.decode([JsonStrategy].self, forKey: .strategies)
//                    self = .JSON(values)
//            case  .NUMBER:
//                let values = try container.decode([NumberStrategy].self, forKey: .strategies)
//                    self = .NUMBER(values)
//
//            default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type")
//             }
//        }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//
//        switch self {
//        case .STRING(let attachment):
//            try container.encode(Attribute.type.STRING.rawValue, forKey: .type)
//            try container.encode(attachment, forKey: .strategies)
//       case .NUMBER(let attachment):
//            try container.encode(Attribute.type.NUMBER.rawValue, forKey: .type)
//            try container.encode(attachment, forKey: .strategies)
//        case .JSON(let attachment):
//            try container.encode(Attribute.type.DATETIME.rawValue, forKey: .type)
//            try container.encode(attachment, forKey: .strategies)
//        case .BOOLEAN(let attachment):
//            try container.encode(Attribute.type.BOOLEAN.rawValue, forKey: .type)
//            try container.encode(attachment, forKey: .strategies)
//
//        }
//    }
//}
//
//struct BooleanStrategy: Codable {
//    let id: String
//    let value: Bool?
//    let attributes: [Attribute]
//}
//
//struct StringStrategy: Codable {
//    let id: String
//    let value: String?
//    let attributes: [Attribute]
//}
//
//struct JsonStrategy: Codable {
//    let id: String
//    let value: String?
//    let attributes: [Attribute]
//}
//
//struct NumberStrategy: Codable {
//    let id: String
//    let value: Double?
//    let attributes: [Attribute]
//}
//





//enum FeatureStrategy: Decodable {
//    case BOOL(BooleanFeatureStrategy)
//    case STRING(StringFeatureStrategy)
//    
//    enum CodingKeys: CodingKey {
//        case type
//    }
//    
//    init(from decoder: Decoder) throws {
//        let keyedContainer = try decoder.container(keyedBy: CodingKeys.self)
//        let type = try keyedContainer.decode(String.self, forKey: .type)
//
//        let container = try decoder.singleValueContainer()
//        switch type {
//        case TraitType.STRING.rawValue : self = .STRING(try container.decode(StringFeatureStrategy.self))
//        case  TraitType.BOOLEAN.rawValue: self = .BOOL(try container.decode(BooleanFeatureStrategy.self))
//        default: throw DecodingError.dataCorruptedError(forKey: .type, in: keyedContainer, debugDescription: "Unknown type")
//        }
//    }
//}
//
//struct BooleanFeatureStrategy: Decodable {
//    let id, key: String
//    let l: Bool
//    let version: Int
//    let type: String
//    let value: Bool
//    let strategies: [Strategy]
//}
//
//struct StringFeatureStrategy: Decodable {
//    let id, key: String
//    let l: Bool
//    let version: Int
//    let type: String
//    let value: String
//    let strategies: [Strategy]
//}
//
//struct Strategy: Codable {
//    let id: String
//    let value: Value
//    let attributes: [AttributeState]
//    let percentage: Int?
//}
