//
//  IceCreamDataStore.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import Foundation

class IceCreamDataStore: ObservableObject {
  @Published var displayedCones: [String] = []
  @Published var displayedFlavors: [String] = []
  @Published var displayedToppings: [String] = []
}

#if DEBUG
extension IceCreamDataStore {
  static var sample: IceCreamDataStore {
    let model = IceCreamDataStore()
    model.displayedCones = ["Sugar Cone", "Cake Cone"]
    model.displayedFlavors = ["Chocolate", "Vanilla"]
    model.displayedToppings = ["Sprinkles", "Caramel"]

    return model
  }
}
#endif
