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
                    Link(destination: widgetActionOne.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(widgetColor.buttonColor)
                                    .cornerRadius(25)
                                widgetActionOne.icon
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            widgetActionOne.title
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: widgetActionTwo.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(widgetColor.buttonColor)
                                    .cornerRadius(25)
                                widgetActionTwo.icon
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            widgetActionTwo.title
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: widgetActionThree.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(widgetColor.buttonColor)
                                    .cornerRadius(25)
                                widgetActionThree.icon
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            widgetActionThree.title
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: widgetActionFour.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(widgetColor.buttonColor)
                                    .cornerRadius(25)
                                widgetActionFour.icon
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            widgetActionFour.title
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: widgetActionFive.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(widgetColor.buttonColor)
                                    .cornerRadius(25)
                                widgetActionFive.icon
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            widgetActionFive.title
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
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
