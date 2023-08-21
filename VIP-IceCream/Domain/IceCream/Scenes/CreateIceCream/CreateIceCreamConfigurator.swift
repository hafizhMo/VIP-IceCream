//
//  CreateIceCreamConfigurator.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import SwiftUI

extension CreateIceCreamView {
  func configureView() -> some View {
    var view = self
    let interactor = CreateIceCreamInteractor()
    let presenter = CreateIceCreamPresenter()
    view.interactor = interactor
    interactor.presenter = presenter
    presenter.view = view
    
    return view
  }
}
