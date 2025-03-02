//
//  QuestionTitleSubtitleView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 01/03/25.
//

import SwiftUI

struct QuestionTitleSubtitleView: View {
    let title: String
    let subtitle: String

    var body: some View {
        (
            Text(title).bold().foregroundStyle(.primary) +
                Text(subtitle)
        )
        .foregroundStyle(.secondary)
        .fixedSize(horizontal: false, vertical: true)
    }
}
