//
//  CellView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 28/02/25.
//

import SwiftUI

struct CellView: View {
    @State private var currency: Currency = .eur

    var body: some View {
        VStack {
            CurrencySelector(currency: $currency)
            ThreeItemContainer(
                start: Text(currency.rawValue),
                main: Text("IKEA purchase"),
                end: Text(currency == .eur ? "123.45 €" : "101.20 $")
                    .bold()
                    .foregroundStyle(Color.green)
                    .contentTransition(.numericText())
            )
        }
        .padding()
    }
}

#Preview {
    CellView()
}
