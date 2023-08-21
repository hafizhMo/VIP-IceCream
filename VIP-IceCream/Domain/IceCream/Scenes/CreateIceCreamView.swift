//
//  CreateIceCreamView.swift
//  VIP-IceCream
//
//  Created by Hafizh Mo on 21/08/23.
//

import SwiftUI

extension CreateIceCreamView {
  // TODO: Call interactor to fetch data

  func showIceCreamImage() -> Bool {
    return selectedCone.isEmpty || selectedFlavor.isEmpty || selectedTopping.isEmpty
  }
}

struct CreateIceCreamView: View {
  // TODO: Add interactor

  @ObservedObject var iceCream = IceCreamDataStore()
  @State private var selectedCone = ""
  @State private var selectedFlavor = ""
  @State private var selectedTopping = ""

  @State private var showDoneAlert = false

  var body: some View {
    NavigationView {
      Form {
        Section {
          Picker("Select a cone or cup", selection: $selectedCone) {
            ForEach(iceCream.displayedCones, id: \.self) {
              Text($0)
            }
          }
          Picker("Choose your flavor", selection: $selectedFlavor) {
            ForEach(iceCream.displayedFlavors, id: \.self) {
              Text($0)
            }
          }
          Picker("Choose a topping", selection: $selectedTopping) {
            ForEach(iceCream.displayedToppings, id: \.self) {
              Text($0)
            }
          }
        } header: {
          Text("Let's make ice cream!")
        }

        Section {
          Button {
            showDoneAlert = true
          } label: {
            Text("Done")
              .bold()
              .frame(maxWidth: .infinity, alignment: .center)
          }
          .disabled(showIceCreamImage())
          .alert(isPresented: $showDoneAlert) {
            Alert(
              title: Text("Your ice cream is ready!"),
              message: Text("Let's make a new one. You can never have too much ice cream..."),
              dismissButton: .default(Text("OK")) {
                selectedCone = ""
                selectedFlavor = ""
                selectedTopping = ""
              }
            )
          }

        }

        Section {
          CreateIceCreamImageView(
            selectedCone: $selectedCone,
            selectedFlavor: $selectedFlavor,
            selectedTopping: $selectedTopping
          )
        }
      }
      .navigationTitle("Ice Cream")
    }
    .navigationViewStyle(.stack)
  }
}

struct CreateIceCreamView_Previews: PreviewProvider {
  static var previews: some View {
    CreateIceCreamView(iceCream: IceCreamDataStore())
  }
}
