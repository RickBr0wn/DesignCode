//
//  TabBar.swift
//  DesignCode
//
//  Created by Rick Brown on 08/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI

struct TabBar: View {
  var body: some View {
    TabView {
      Home().tabItem {
        Image(systemName: "play.circle.fill")
        Text("Home")
      }
      ContentView().tabItem {
        Image(systemName: "rectangle.stack.fill")
        Text("Certificates")
      }
    }
  }
}

struct TabBar_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      TabBar()
        .previewDevice("iPhone 11 Pro Max")
    }
  }
}
