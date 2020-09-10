//
//  DataStore.swift
//  DesignCode
//
//  Created by Rick Brown on 10/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
  @Published var posts: [Post] = []
  
  init() {
    getPosts()
  }
  
  func getPosts() {
    Api().getPosts { posts in
      self.posts = posts
    }
  }
}
