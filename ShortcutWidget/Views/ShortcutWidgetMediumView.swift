//
//  ShortcutWidgetMediumView.swift
//  TMDBViewer
//
//  Created by Gabriel Targon on 06/11/22.
//

import WidgetKit
import SwiftUI

struct ShortcutWidgetMediumView: View {
    var widgetColor: ShortcutWidgetColor
    var widgetActionOne: ShortcutWidgetAction
    var widgetActionTwo: ShortcutWidgetAction
    var widgetActionThree: ShortcutWidgetAction
    var widgetActionFour: ShortcutWidgetAction
    var widgetActionFive: ShortcutWidgetAction
    
    var body: some View {
        ZStack {
            widgetColor.backgroundColor
            VStack(alignment: .center,
                   spacing: 15) {
                HStack(alignment: .top) {
                    Text("Hello Gabriel,\nwhat do you want to do today?")
                        .font(.system(size: 13,
                                      weight: .semibold))
                        .foregroundColor(.white)
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .accessibility(hidden: true)
                        .frame(width: 20,
                               height: 20)
                        .padding(.trailing, 5)
                }
                
                Rectangle()
                    .fill(.white)
                    .frame(height: 1)
                
                HStack {
                    MediumButton(url: widgetActionOne.url,
                                 title: widgetActionOne.title,
                                 image: widgetActionOne.icon,
                                 color: widgetColor.buttonColor)
                    
                    MediumButton(url: widgetActionTwo.url,
                                 title: widgetActionTwo.title,
                                 image: widgetActionTwo.icon,
                                 color: widgetColor.buttonColor)
                    
                    MediumButton(url: widgetActionThree.url,
                                 title: widgetActionThree.title,
                                 image: widgetActionThree.icon,
                                 color: widgetColor.buttonColor)
                    
                    MediumButton(url: widgetActionFour.url,
                                 title: widgetActionFour.title,
                                 image: widgetActionFour.icon,
                                 color: widgetColor.buttonColor)
                    
                    MediumButton(url: widgetActionFive.url,
                                 title: widgetActionFive.title,
                                 image: widgetActionFive.icon,
                                 color: widgetColor.buttonColor)
                }
            }
                   .padding(.leading, 10)
                   .padding(.trailing, 10)
        }
    }
}

struct ShortcutMediumView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutWidgetMediumView(widgetColor: ShortcutWidgetColor.automatic,
                                 widgetActionOne: ShortcutWidgetAction.home,
                                 widgetActionTwo: ShortcutWidgetAction.email,
                                 widgetActionThree: ShortcutWidgetAction.call,
                                 widgetActionFour: ShortcutWidgetAction.profile,
                                 widgetActionFive: ShortcutWidgetAction.config)
        .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
