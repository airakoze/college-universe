//
//  Animations.swift
//  College Universe
//
//  Created by Andy Irakoze on 4/29/22.
//

import SwiftUI

extension Animation {
    static let openCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
    static let closeCard = Animation.spring(response: 0.6, dampingFraction: 0.9)
}
