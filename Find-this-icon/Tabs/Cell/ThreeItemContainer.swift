//
//  ThreeItemContainer.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct ThreeItemContainer<Start: View, Main: View, End: View>: View {
    let start: Start
    let main: Main
    let end: End

    var body: some View {
        HStack {
            start
                .frame(width: 24)
            main
            Spacer()
            end
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.secondary)
        )
    }
}
