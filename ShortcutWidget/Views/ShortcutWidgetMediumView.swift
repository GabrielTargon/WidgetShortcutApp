//
//  ShortcutWidgetMediumView.swift
//  TMDBViewer
//
//  Created by Gabriel Targon on 06/11/22.
//

import WidgetKit
import SwiftUI

struct ShortcutWidgetMediumView: View {
    var defaultColor: ShortcutWidgetColorLogic
    
    var body: some View {
        ZStack {
            defaultColor.backgroundColor
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
                    Link(destination: ShortcutURLs.home.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(defaultColor.buttonColor)
                                    .cornerRadius(25)
                                Image("home")
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            Text("Home")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: ShortcutURLs.email.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(defaultColor.buttonColor)
                                    .cornerRadius(25)
                                Image("email")
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            Text("Email")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: ShortcutURLs.call.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(defaultColor.buttonColor)
                                    .cornerRadius(25)
                                Image("call")
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            Text("Call")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: ShortcutURLs.profile.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(defaultColor.buttonColor)
                                    .cornerRadius(25)
                                Image("profile")
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            Text("Profile")
                                .font(.system(size: 15))
                                .foregroundColor(.white)
                                .frame(height: 10)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    Link(destination: ShortcutURLs.config.url) {
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 45,
                                           height: 45)
                                    .foregroundColor(defaultColor.buttonColor)
                                    .cornerRadius(25)
                                Image("configuration")
                                    .resizable()
                                    .frame(width: 25,
                                           height: 25)
                            }
                            
                            Text("Config")
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
        ShortcutWidgetMediumView(defaultColor: ShortcutWidgetColorLogic.automatic)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
