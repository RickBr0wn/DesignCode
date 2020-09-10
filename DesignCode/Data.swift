//
//  Data.swift
//  DesignCode
//
//  Created by Rick Brown on 10/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

//  Post model
//  [
//    {
//      "userId": 1,
//      "id": 1,
//      "title": "...",
//      "body": "..."
//    },
//  ]

struct Post: Codable, Identifiable {
  let id = UUID()
  var title: String
  var body: String
}

class Api {
  func getPosts(completion: @escaping ([Post]) -> ()) {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
    
    URLSession.shared.dataTask(with: url) { (data, _, _) in
      guard let data = data else { return }
      let posts = try! JSONDecoder().decode([Post].self, from: data)
      
      DispatchQueue.main.async {
        completion(posts)
      }
      
    }
  .resume()
  }
}
