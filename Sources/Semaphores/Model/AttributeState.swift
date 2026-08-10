//
//  AttributeState.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation


//
//enum Attribute {
//    case STRING([StringAttribute])
//    case SEMANTIC_VERSION([SemanticVersionAttribute])
//    case NUMBER([NumberAttribute])
//    case DATETIME([DateTimeAttribute])
//    case BOOLEAN([BooleanAttribute])
//
//
//    enum type: String, Codable {
//        case STRING="STRING",SEMANTIC_VERSION="SEMANTIC_VERSION",NUMBER="NUMBER",DATETIME="DATETIME",BOOLEAN="BOOLEAN"
//    }
//}
//
//extension Attribute: Codable {
//    // 1
//    private enum CodingKeys: String, CodingKey {
//        case type, attributes ,values
//    }
//
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let type = try container.decode(Attribute.type.self, forKey: .type)
//
//        //let container = try decoder.singleValueContainer()
//        switch type {
//        case .STRING:
//            let values = try container.decode([StringAttribute].self, forKey: .values)
//                self = .STRING(values)
//        case .SEMANTIC_VERSION:
//            let values = try container.decode([SemanticVersionAttribute].self, forKey: .attributes)
//                self = .SEMANTIC_VERSION(values)
//        case .NUMBER:
//            let values = try container.decode([NumberAttribute].self, forKey: .attributes)
//                self = .NUMBER(values)
//        case .DATETIME:
//            let values = try container.decode([DateTimeAttribute].self, forKey: .attributes)
//                self = .DATETIME(values)
//        case .BOOLEAN:
//            let values = try container.decode([BooleanAttribute].self, forKey: .attributes)
//                self = .BOOLEAN(values)
//
//       default: throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Unknown type")
//        }
//    }
//
//    // 3
//       func encode(to encoder: Encoder) throws {
//           var container = encoder.container(keyedBy: CodingKeys.self)
//
//           switch self {
//           case .STRING(let attachment):
//               try container.encode(Attribute.type.STRING.rawValue, forKey: .type)
//               try container.encode(attachment, forKey: .attributes)
//           case .SEMANTIC_VERSION(let attachment):
//               try container.encode(Attribute.type.SEMANTIC_VERSION.rawValue, forKey: .type)
//               try container.encode(attachment, forKey: .attributes)
//           case .NUMBER(let attachment):
//               try container.encode(Attribute.type.NUMBER.rawValue, forKey: .type)
//               try container.encode(attachment, forKey: .attributes)
//           case .DATETIME(let attachment):
//               try container.encode(Attribute.type.DATETIME.rawValue, forKey: .type)
//               try container.encode(attachment, forKey: .attributes)
//           case .BOOLEAN(let attachment):
//               try container.encode(Attribute.type.BOOLEAN.rawValue, forKey: .type)
//               try container.encode(attachment, forKey: .attributes)
//
//           }
//       }
//}
//
//struct StringAttribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [String]
//    let type: String
//}
//
//struct SemanticVersionAttribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [String]
//    let type: String
//}
//struct NumberAttribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [Double]
//    let type: String
//}
//
//struct BooleanAttribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [Bool]
//    let type: String
//}
//
//struct DateTimeAttribute: Codable {
//    let conditional : String
//    let fieldName: String
//    let values: [String]
//    let type: String
//}
//
//
