//
//  CardItem.swift
//  College Universe
//
//  Created by Andy Irakoze on 4/22/22.
//

import SwiftUI

struct CardItem: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text("Concert at SLU")
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("Sep 12, 2022".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("Come join us the rec for this concert ...")
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text", in: namespace)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
        }
        .foregroundStyle(.white)
        .background(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image", in: namespace)
        )
        .background(
            Image("Background 5")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 300)
        .padding(20)
    }
}

struct CardItem_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        CardItem(namespace: namespace, show: .constant(true))
    }
}
