//
//  AttributeConditionalType.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

enum AttributeConditionalType  : String{
    case   EQUALS ,
           ENDS_WITH,
           STARTS_WITH,
           GREATER,
           GREATER_EQUALS,
           LESS,
           LESS_EQUALS,
           NOT_EQUALS,
           INCLUDES,
           EXCLUDES,
           REGEX,
           DEFAULT
}
