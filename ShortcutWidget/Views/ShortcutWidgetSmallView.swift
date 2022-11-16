//
//  ShortcutWidgetSmallView.swift
//  TMDBViewer
//
//  Created by Gabriel Targon on 06/11/22.
//

import WidgetKit
import SwiftUI

struct ShortcutWidgetSmallView: View {
    var widgetColor: ShortcutWidgetColor
    var widgetAction: ShortcutWidgetAction
    
    var body: some View {
        ZStack {
            widgetColor.backgroundColor
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
                        .foregroundColor(widgetColor.buttonColor)
                        .cornerRadius(20)
                    widgetAction.icon
                        .resizable()
                        .frame(width: 40,
                               height: 40)
                }
                
                Spacer()
                
                widgetAction.title
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
        .widgetURL(widgetAction.url)
    }
}

struct ShortcutSmallView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutWidgetSmallView(widgetColor: ShortcutWidgetColor.automatic,
                                widgetAction: ShortcutWidgetAction.home)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
