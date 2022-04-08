//
//  Features.swift
//  College Universe
//
//  Created by Andy Irakoze on 4/8/22.
//

import SwiftUI

struct Features: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}

var features = [
    Features(title: "College Universe", subtitle: "Saint Louis University", text: "College Universe is an app designed to keep college students connected...", image: "Illustration 5", logo: "Logo 2"),
    Features(title: "Chat Groups", subtitle: "Saint Louis University", text: "College Universe provides a new way chat in groups...", image: "Illustration 3", logo: "Logo 2"),
    Features(title: "Carpooling", subtitle: "Saint Louis University", text: "College Universe helps students find carpools much easier...", image: "Illustration 4", logo: "Logo 2"),
    Features(title: "Events", subtitle: "Saint Louis University", text: "College Universe has an event feature to keep your campus vibrant...", image: "Illustration 2", logo: "Logo 2"),
    Features(title: "Help Center", subtitle: "Saint Louis University", text: "Need help for anything ask your fellow classmates with College Universe...", image: "Illustration 1", logo: "Logo 2"),
]
