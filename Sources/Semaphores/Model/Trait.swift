//
//  Trait.swift
//  Semaphore
//
//  Created by Suthasinee Sangchan on 20/6/2565 BE.
//

import Foundation

public struct Trait {
    let name: String
    let value: AttributeTypeValue
    
    public init(name: String, value: AttributeTypeValue) {
         self.name = name
         self.value = value
     }
}
