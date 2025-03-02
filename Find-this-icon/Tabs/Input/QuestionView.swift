//
//  QuestionView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct QuestionView: View {
    @Binding var text: String
    @Binding var showHint: Bool
    let title: String
    let placeholder: String
    let errorString: String
    let successString: String
    let solution: String
    let onDidFocus: () -> Void

    @FocusState private var isFocused: Bool

    var body: some View {
        VStack(spacing: 16) {
            Text(title)
                .font(.body.italic())
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
            TextField(placeholder, text: $text)
                .focused($isFocused)
                .textFieldStyle(.roundedBorder)
                .onChange(of: isFocused) { _, newValue in
                    if newValue {
                        onDidFocus()
                    }
                }
            if showHint {
                Group {
                    if text.lowercased() != solution {
                        Text(errorString)
                            .foregroundStyle(Color.red)
                    } else {
                        Text(successString)
                            .foregroundStyle(Color.green)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            Spacer()
        }
    }
}
