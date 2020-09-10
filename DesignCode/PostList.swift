//
//  PostList.swift
//  DesignCode
//
//  Created by Rick Brown on 10/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct PostList: View {
  @ObservedObject var store = DataStore()
  
  var body: some View {
    List(store.posts) { post in
      VStack(alignment: .leading, spacing: 8) {
        Text(post.title)
          .font(.system(.title, design: .serif)).bold()
        Text(post.body)
          .font(.subheadline)
          .foregroundColor(Color.secondary)
      }
      
    }
  }
}

struct PostList_Previews: PreviewProvider {
  static var previews: some View {
    PostList()
  }
}
