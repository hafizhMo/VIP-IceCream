//
//  VIP_IceCreamApp.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import SwiftUI

@main
struct VIP_IceCreamApp: App {
  let model = IceCreamDataStore()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(model)
    }
  }
}
