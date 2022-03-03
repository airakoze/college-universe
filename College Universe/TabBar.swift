//
//  TabBar.swift
//  College Universe
//
//  Created by Andy Irakoze on 3/2/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "house")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                    Text("Home")
                        .font(.caption2)
                }
                Spacer()
                VStack {
                    Image(systemName: "person")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                    Text("Acconut")
                        .font(.caption2)
                }
                Spacer()
            }
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .stroke(
                        .linearGradient(
                            colors: [
                                .white.opacity(0.3),
                                .black.opacity(0.1)
                            ], startPoint: .top, endPoint: .bottom
                        )
                    )
                    .blendMode(.overlay)
            )
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
