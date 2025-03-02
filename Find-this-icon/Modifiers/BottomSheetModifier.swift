//
//  BottomSheetModifier.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct BottomSheetModifier: ViewModifier {
    let onDismiss: () -> Void

    func body(content: Content) -> some View {
        ZStack(alignment: .bottom) {
            Color.clear
                .contentShape(Rectangle())
                .onTapGesture(perform: onDismiss)
            content
                .frame(maxWidth: .infinity)
                .drawingGroup()
                .background(
                    RoundedRectangle(
                        cornerRadius: 24,
                        style: .continuous
                    )
                    .fill(.thickMaterial)
                )
                .overlay(alignment: .topTrailing, content: {
                    Button(action: onDismiss, label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundStyle(.secondary)
                    })
                    .buttonStyle(.plain)
                    .padding(8)
                })
        }
        .transition(.move(edge: .bottom).combined(with: .opacity))
    }
}
