//
//  ShortcutWidgetColor.swift
//  ShortcutWidgetExtension
//
//  Created by Gabriel Targon on 10/11/22.
//

import SwiftUI

enum ShortcutWidgetColor {
    case light
    case dark
    case automatic
    
    var backgroundColor: Color {
        switch self {
        case .light:
            return Color("CeruleanBackground")
        case .dark:
            return Color("DenimBackground")
        case .automatic:
            return Color("DefaultBackground")
        }
    }
    
    var buttonColor: Color {
        switch self {
        case .light:
            return Color("CeruleanButton")
        case .dark:
            return Color("DenimButton")
        case .automatic:
            return Color("DefaultButton")
        }
    }
    
    // Functions
    
    func getColorWith(string: String?) -> Self {
        switch string {
        case "light":
            return .light
        case "dark":
            return .dark
        case "automatic":
            return .automatic
        default:
            return .automatic
        }
    }
}
