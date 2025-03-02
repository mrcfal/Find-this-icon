//
//  DetailView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct DetailView: View {
    let feature: AccessibilityFeature

    var body: some View {
        DetailContentView(
            title: feature.title,
            details: feature.details
        )
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle(feature.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailContentView: View {
    let title: String
    let details: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle.bold())
            Text(details)
                .font(.body)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
