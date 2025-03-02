//
//  InputView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 28/02/25.
//

import SwiftUI

/**
 1. DT: scrolling?
 2. VO: Submitting + feedback? Programmatical focus + hint
 3. VO: Overlay? Sorting
 */

struct InputView: View {
    @State private var answer: String = ""
    @State private var didSubmit = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                content
                button.hidden()
            }
            button
        }
    }

    private var content: some View {
        QuestionView(
            text: $answer,
            showHint: $didSubmit,
            title: "I forgot to badge in. Who can help me?",
            placeholder: "Answer here",
            errorString: "Please, try again!",
            successString: "Yes! Who else!?",
            solution: "barbara",
            onDidFocus: { didSubmit = false }
        )
        .padding()
    }

    private var button: some View {
        VStack {
            QuestionTitleSubtitleView(
                title: "The Most Important Question in the World – Answer Above!\n",
                subtitle: "Enter your response and tap Submit. Don’t worry, you can submit as many times as you need! 🚀"
            )
            SubmitButton {
                didSubmit = true
            }
        }
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    InputView()
}
