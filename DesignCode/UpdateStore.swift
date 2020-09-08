//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Rick Brown on 08/09/2020.
//  Copyright © 2020 Rick Brown. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
  @Published var updates: [Update] = updateData
}
