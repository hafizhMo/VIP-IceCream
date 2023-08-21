//
//  CreateIceCreamPresenter.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import Foundation

protocol CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCream.LoadIceCream.Response)
}

class CreateIceCreamPresenter {
  var view: CreateIceCreamDisplayLogic?
}

extension CreateIceCreamPresenter: CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCream.LoadIceCream.Response) {
    let viewModel = CreateIceCream.LoadIceCream.ViewModel(
      cones: response.iceCreamData.cones,
      flavors: response.iceCreamData.flavors,
      toppings: response.iceCreamData.toppings
    )
    view?.displayIceCream(viewModel: viewModel)
  }
}
