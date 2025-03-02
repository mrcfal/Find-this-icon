//
//  HomeView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 28/02/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedFeature: AccessibilityFeature?
    @State private var overlayingFeature: AccessibilityFeature?
    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            content
                .blur(radius: overlayingFeature.map { _ in 2 } ?? 0)
                .allowsHitTesting(overlayingFeature == nil)
                .overlay(alignment: .bottom, content: {
                    overlayingFeature.map { feature in
                        DetailContentView(
                            title: feature.title,
                            details: feature.details
                        )
                        .frame(maxWidth: .infinity)
                        .modifier(BottomSheetModifier(onDismiss: {
                            withAnimation {
                                overlayingFeature = nil
                            }
                        }))
                    }
                })
                .navigationTitle("Find this icon")
                .navigationDestination(for: AccessibilityFeature.self) { feature in
                    DetailView(feature: feature)
                }
        }
    }

    private var content: some View {
        List(AccessibilityFeature.rows) { feature in
            HomeCellView(
                systemName: feature.icon,
                title: feature.title,
                description: feature.description,
                infoAction: feature.hasButton ? {
                    withAnimation {
                        overlayingFeature = feature
                    }
                } : nil, action: {
                    navigationPath.append(feature)
                }
            )
        }
    }
}

#Preview {
    HomeView()
}
