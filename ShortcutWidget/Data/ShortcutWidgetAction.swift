//
//  ShortcutWidgetAction.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 10/11/22.
//

import SwiftUI

enum ShortcutWidgetAction {
    case home
    case email
    case call
    case profile
    case config
    
    var icon: Image {
        switch self {
        case .home:
            return Image("home")
        case .email:
            return Image("email")
        case .call:
            return Image("call")
        case .profile:
            return Image("profile")
        case .config:
            return Image("configuration")
        }
    }
    
    var title: Text {
        switch self {
        case .home:
            return Text("Home")
        case .email:
            return Text("Email")
        case .call:
            return Text("Call")
        case .profile:
            return Text("Profile")
        case .config:
            return Text("Config")
        }
    }
    
    var url: URL {
        switch self {
        case .home:
            return ShortcutURLs.home.url
        case .email:
            return ShortcutURLs.email.url
        case .call:
            return ShortcutURLs.call.url
        case .profile:
            return ShortcutURLs.profile.url
        case .config:
            return ShortcutURLs.config.url
        }
    }
    
    func getActionFrom(raw: Int) -> Self {
        switch raw {
        case 1:
            return .home
        case 2:
            return .email
        case 3:
            return .call
        case 4:
            return .profile
        case 5:
            return .config
        default:
            return .home
        }
    }
}
