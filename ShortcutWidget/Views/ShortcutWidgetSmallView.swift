//
//  ShortcutWidgetSmallView.swift
//  TMDBViewer
//
//  Created by Gabriel Targon on 06/11/22.
//

import WidgetKit
import SwiftUI

struct ShortcutWidgetSmallView: View {
    var defaultColor: ShortcutWidgetColorLogic
    
    var body: some View {
        ZStack {
            defaultColor.backgroundColor
            VStack {
                HStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .accessibility(hidden: true)
                        .frame(width: 20,
                               height: 20)
                }
                .padding(.top)
                .padding(.trailing)
                Spacer()
            }
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .frame(width: 75,
                               height: 75)
                        .foregroundColor(defaultColor.buttonColor)
                        .cornerRadius(20)
                    Image("home")
                        .resizable()
                        .frame(width: 40,
                               height: 40)
                }
                
                Spacer()
                
                Text("Home")
                    .font(.system(size: 20,
                                  weight: .semibold))
                    .foregroundColor(.white)
                    .frame(height: 10)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .frame(maxHeight: .infinity)
            .padding(.top)
            .padding(.bottom)
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct ShortcutSmallView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutWidgetSmallView(defaultColor: ShortcutWidgetColorLogic.automatic)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
