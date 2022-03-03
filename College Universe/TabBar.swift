//
//  TabBar.swift
//  College Universe
//
//  Created by Andy Irakoze on 3/2/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .offset(y: 200)
            HStack {
                Spacer()
                VStack(spacing: 0) {
                    Image(systemName: "house")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 80, height: 29)
                    Text("Home")
                        .font(.caption2)
                }
                Spacer()
                VStack(spacing: 0) {
                    Image(systemName: "person")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 80, height: 29)
                    Text("Account")
                        .font(.caption2)
                }
                Spacer()
            }
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
            .strokeStyle(cornerRadius: 34)
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
