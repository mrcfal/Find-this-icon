//
//  SubmitButton.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct SubmitButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action, label: {
            Text("Submit")
                .bold()
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
        })
        .buttonStyle(.bordered)
    }
}
