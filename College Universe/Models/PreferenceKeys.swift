//
//  PreferenceKeys.swift
//  College Universe
//
//  Created by Andy Irakoze on 4/1/22.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
