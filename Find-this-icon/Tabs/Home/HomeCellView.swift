//
//  HomeCellView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct HomeCellView: View {
    let systemName: String
    let title: String
    let description: String
    let infoAction: (() -> Void)?
    let action: () -> Void

    var body: some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.blue)
                .frame(width: 30)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            infoAction.map { infoAction in
                Button(action: {
                    infoAction()
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                }
                .buttonStyle(.plain)
            }
        }
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    List {
        HomeCellView(
            systemName: "pencil",
            title: "Some title",
            description: "This is a description",
            infoAction: nil,
            action: {}
        )
        HomeCellView(
            systemName: "pencil",
            title: "Some title",
            description: "This is a description",
            infoAction: {},
            action: {}
        )
    }
}
