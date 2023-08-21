//
//  Seeds.swift
//  VIP-IceCreamTests
//
//  Created by Hafizh Mo on 21/08/23.
//

import XCTest
@testable import VIP_IceCream

enum Seeds {
  static let iceCream = IceCream(
    cones: ["Sugar Cone", "Cake Cone", "Waffle Cone", "Cup"],
    flavors: ["Chocolate", "Strawberry", "Vanilla", "Pistachio", "Hazelnut"],
    toppings: ["Hot Fudge", "Sprinkles", "Mystery Sauce", "Chocolate Chips"]
  )
}
