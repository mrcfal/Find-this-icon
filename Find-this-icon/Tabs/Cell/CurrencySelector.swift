//
//  CurrencySelector.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

enum Currency: String, Identifiable, CaseIterable {
    case eur = "€"
    case usd = "$"

    var id: String { rawValue }
}

struct CurrencySelector: View {
    @Binding var currency: Currency
    @Namespace private var namespace

    var body: some View {
        HStack(spacing: 0) {
            ForEach(Currency.allCases) { value in
                Button(action: {
                    withAnimation {
                        currency = value
                    }
                }, label: {
                    Text(value.rawValue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                })
                .buttonStyle(.plain)
                .background(
                    currency == value ? Color.yellow.opacity(0.2).matchedGeometryEffect(id: "background", in: namespace) : nil
                )
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
