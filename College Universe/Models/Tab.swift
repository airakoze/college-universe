//
//  Tab.swift
//  College Universe
//
//  Created by Andy Irakoze on 3/8/22.
//

import SwiftUI

extension Color {
    init(_ hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: alpha
        )
    }
}

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "Home", icon: "house", tab: .home, color: .teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .teal),
    TabItem(text: "Carpool", icon: "car", tab: .carpool, color: .teal),
    TabItem(text: "Events", icon: "calendar", tab: .events, color: .teal),
    TabItem(text: "Chat", icon: "bubble.left", tab: .chat, color: .teal)
]

enum Tab: String {
    case home
    case explore
    case carpool
    case events
    case chat
}


struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

