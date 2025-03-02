//
//  AccessibilityFeature.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 28/02/25.
//

import Foundation

struct AccessibilityFeature: Identifiable, Hashable {
    var id: String { title }
    let title: String
    let description: String
    let icon: String
    let details: String
    let hasButton: Bool
}

extension AccessibilityFeature {
    static let rows: [AccessibilityFeature] = [
        AccessibilityFeature(
            title: "VoiceOver",
            description: "Screen reader for iOS.",
            icon: "eye",
            details: "VoiceOver provides spoken feedback for visually impaired users. Enable it in Settings > Accessibility > VoiceOver.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Dynamic Type",
            description: "Supports scalable text.",
            icon: "textformat.size",
            details: "Use `.dynamicTypeSize()` and `ScaledMetric` to adjust text size dynamically.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Semantic Labels",
            description: "Describe UI elements.",
            icon: "text.bubble",
            details: "Use `.accessibilityLabel()` to provide meaningful descriptions.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Custom Rotor",
            description: "Enhance navigation.",
            icon: "arrow.up.arrow.down.circle",
            details: "Define `.accessibilityRotor()` to improve navigation in VoiceOver.",
            hasButton: false
        ),
        AccessibilityFeature(
            title: "Reduce Motion",
            description: "Respect system settings.",
            icon: "slowmo",
            details: "Use `@Environment(\\.accessibilityReduceMotion)` to detect user preferences.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Color Contrast",
            description: "Ensure readability.",
            icon: "paintbrush",
            details: "Follow WCAG contrast guidelines and use `.foregroundColor()` wisely.",
            hasButton: false
        ),
        AccessibilityFeature(
            title: "Haptic Feedback",
            description: "Provide tactile feedback.",
            icon: "iphone.radiowaves.left.and.right",
            details: "Use `UIFeedbackGenerator` to improve user experience.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Invert Colors",
            description: "Support high contrast.",
            icon: "circle.lefthalf.fill",
            details: "Use `@Environment(\\.accessibilityInvertColors)` to detect this setting.",
            hasButton: false
        ),
        AccessibilityFeature(
            title: "Accessible Buttons",
            description: "Large, tappable areas.",
            icon: "hand.tap",
            details: "Use `.accessibilityHint()` and ensure 44pt minimum tap target size.",
            hasButton: true
        ),
        AccessibilityFeature(
            title: "Testing Tools",
            description: "Xcode & Real Devices.",
            icon: "hammer.fill",
            details: "Use Accessibility Inspector and real devices to test properly.",
            hasButton: true
        )
    ]
}
