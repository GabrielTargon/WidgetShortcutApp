//
//  ShortcutWidgetAction.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 10/11/22.
//

import Foundation

enum ShortcutWidgetAction {
    case home
    case email
    case call
    case profile
    case config
    
    func getActionWith(string: String?) -> Self {
        switch string {
        case "home":
            return .home
        case "email":
            return .email
        case "call":
            return .call
        case "profile":
            return .profile
        case "config":
            return .config
        default:
            return .home
        }
    }
}
