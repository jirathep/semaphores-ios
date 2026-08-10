//
//  NetworkDataSourceProtocal.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation

public protocol NetworkDataSourceProtocal {
    func fetchFeatures(onFetched:@escaping (String) -> Void, networkDataSourceUrl : String)
}
