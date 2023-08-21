//
//  CreateIceCreamModel.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import Foundation

enum CreateIceCream {
  enum LoadIceCream {
    struct Request {}

    struct Response {
      var iceCreamData: IceCream
    }

    struct ViewModel {
      var cones: [String]
      var flavors: [String]
      var toppings: [String]
    }
  }
}
