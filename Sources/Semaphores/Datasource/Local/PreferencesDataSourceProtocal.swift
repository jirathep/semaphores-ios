//
//  preferencesServiceProtocal.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation

enum preferences: String {
  case featuresJson
}

public protocol PreferencesDataSourceProtocal {
  func getFeaturesJson() -> String
  func setFeatureJson(json: String)
}
