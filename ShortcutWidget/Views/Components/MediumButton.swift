//
//  MediumButton.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 17/11/22.
//

import SwiftUI

struct MediumButton: View {
    var url: URL
    var title: Text
    var image: Image
    var color: Color
    
    var body: some View {
        Link(destination: url) {
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 45,
                               height: 45)
                        .foregroundColor(color)
                        .cornerRadius(25)
                    image
                        .resizable()
                        .frame(width: 25,
                               height: 25)
                }
                
                title
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}

struct MediumButton_Previews: PreviewProvider {
    static var previews: some View {
        MediumButton(url: ShortcutURLs.home.url,
                     title: Text("MediumButtom"),
                     image: Image("logo"),
                     color: Color.blue)
    }
}
