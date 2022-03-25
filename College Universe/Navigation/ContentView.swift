//
//  ContentView.swift
//  College Universe
//
//  Created by Andy Irakoze on 3/2/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .carpool:
                    AccountView()
                case .events:
                    AccountView()
                case .chat:
                    AccountView()
                }
                TabBar()
            }
            .safeAreaInset(edge: .bottom) {
                Color.clear.frame(height: 44)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
