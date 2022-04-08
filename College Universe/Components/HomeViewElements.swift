//
//  HomeViewElements.swift
//  College Universe
//
//  Created by Andy Irakoze on 4/1/22.
//

import SwiftUI

struct HomeViewElements: View {
    var feature: Features = features[0]
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image(feature.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30.0, height: 30.0)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            
            Text(feature.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text(feature.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.426, green: 0.236, blue: 0.236)/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.secondary)
            Text(feature.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 20 )
    }
}

struct HomeViewElements_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewElements()
    }
}
