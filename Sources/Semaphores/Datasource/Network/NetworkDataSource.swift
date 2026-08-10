//
//  NetworkDataSource.swift
//  semaphore
//
//  Created by Suthasinee Sangchan on 16/6/2565 BE.
//

import Foundation
import FirebaseDatabase

public class NetworkDataSource : NetworkDataSourceProtocal {

    public init () {
    }
   
    public func fetchFeatures(onFetched:@escaping (String) -> Void, networkDataSourceUrl : String) {
         let rootRef = Database.database(url: networkDataSourceUrl).reference()
         let userRef: DatabaseReference = rootRef.child("features")
         userRef.observeSingleEvent(of: .value) { (snapshot) in
             let value = snapshot.value as? [[String: Any]]
             onFetched(value?.toJSONString() ?? "")
          }
       }
}


extension Collection where Iterator.Element == [String: Any] {
  func toJSONString(options: JSONSerialization.WritingOptions = .prettyPrinted) -> String {
    if let arr = self as? [[String: Any]],
       let dat = try? JSONSerialization.data(withJSONObject: arr, options: options),
       let str = String(data: dat, encoding: String.Encoding.utf8) {
      return str
    }
    return "[]"
  }
}
