//
//  CreateIceCreamInteractor.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import Foundation

protocol CreateIceCreamBusinessLogic {
  func loadIceCream(request: CreateIceCream.LoadIceCream.Request)
}

class CreateIceCreamInteractor {
  var presenter: CreateIceCreamPresentationLogic?
}

extension CreateIceCreamInteractor: CreateIceCreamBusinessLogic {
  func loadIceCream(request: CreateIceCream.LoadIceCream.Request) {
    let iceCream = Bundle.main.decode(IceCream.self, from: "icecream.json")
    let response = CreateIceCream.LoadIceCream.Response(iceCreamData: iceCream)
    presenter?.presentIceCream(response: response)
  }
}
