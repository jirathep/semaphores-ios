//
//  preferencesService.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation

public class PreferencesDataSource: PreferencesDataSourceProtocal {
    public func getFeaturesJson() -> String {
        userDefault.string(forKey: preferences.featuresJson.rawValue) ?? ""
    }
    
    public func setFeatureJson(json: String) {
        userDefault.set(json, forKey: preferences.featuresJson.rawValue)
    }
    
  let userDefault: UserDefaults

  public init(userDefault: UserDefaults = UserDefaults.standard) {
    self.userDefault = userDefault
  }

 
}
