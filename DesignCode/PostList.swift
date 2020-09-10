//
//  PostList.swift
//  DesignCode
//
//  Created by Rick Brown on 10/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct PostList: View {
  @State var posts: [Post] = []
  
  var body: some View {
    List(posts) { post in
      VStack(alignment: .leading, spacing: 12) {
        Text(post.title)
          .font(.title).bold()
        Text(post.body)
          .font(.caption)
          .foregroundColor(Color.gray)
      }
      
    }
    .onAppear {
      Api().getPosts { posts in
        self.posts = posts
      }
    }
  }
}

struct PostList_Previews: PreviewProvider {
  static var previews: some View {
    PostList()
  }
}
