//
//  TabBar.swift
//  College Universe
//
//  Created by Andy Irakoze on 3/2/22.
//

import SwiftUI

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct TabBar: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    @State var tabItemWidth: CGFloat = 0
    var color: Color = .teal
    
    var body: some View {
        HStack {
            buttons
        }
        .padding(.horizontal, 8)
        .padding(.top, 14)
        .frame(height: 80, alignment: .top)
        .background(.ultraThinMaterial, in: RoundedCornersShape(corners: [.topLeft, .topRight], radius: 25))
        .background(
            background
        )
        .overlay(
            overlay
        )
        .strokeStyle(cornerRadius: 25)
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
    
    var buttons: some View {
        ForEach(tabItems) { item in
            Button {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                    selectedTab = item.tab
                }
            } label: {
                VStack(spacing: 0) {
                    Image(systemName: item.icon)
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 44, height: 29)
                    Text(item.text)
                        .font(.caption2)
                        .lineLimit(1)
                }
                .frame(maxWidth: .infinity)
            }
            .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
            .blendMode(selectedTab == item.tab ? .overlay : .normal)
            .overlay(
                GeometryReader { proxy in
                    Color.clear.preference(key: TabPreferenceKey.self, value: proxy.size.width)
                }
            )
            .onPreferenceChange(TabPreferenceKey.self) { value in
                tabItemWidth = value
            }
        }
    }
    
    var background: some View {
        HStack {
            if selectedTab == .explore { Spacer() }
            if selectedTab == .carpool { Spacer() }
            if selectedTab == .events {
                Spacer()
                Spacer()
                Spacer()
            }
            if selectedTab == .chat { Spacer() }
            Circle().fill(color).frame(width: tabItemWidth)
            if selectedTab == .home { Spacer() }
            if selectedTab == .explore {
                Spacer()
                Spacer()
                Spacer()
            }
            if selectedTab == .carpool { Spacer() }
            if selectedTab == .events { Spacer() }
        }
        .padding(.horizontal, 8)
    }
    
    var overlay: some View {
        HStack {
            if selectedTab == .explore { Spacer() }
            if selectedTab == .carpool { Spacer() }
            if selectedTab == .events {
                Spacer()
                Spacer()
                Spacer()
            }
            if selectedTab == .chat { Spacer() }
            Rectangle()
                .fill(color)
                .frame(width: 28, height: 5)
                .cornerRadius(3)
                .frame(width: tabItemWidth)
                .frame(maxHeight: .infinity, alignment: .top)
            if selectedTab == .home { Spacer() }
            if selectedTab == .explore {
                Spacer()
                Spacer()
                Spacer()
            }
            if selectedTab == .carpool { Spacer() }
            if selectedTab == .events { Spacer() }
        }
        .padding(.horizontal, 8)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .previewInterfaceOrientation(.portrait)
    }
}
