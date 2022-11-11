//
//  ShortcutWidgetColor.swift
//  ShortcutWidgetExtension
//
//  Created by Gabriel Targon on 10/11/22.
//

import SwiftUI

enum ShortcutWidgetColor {
    case pink
    case blue
    case automatic
    
    var backgroundColor: Color {
        switch self {
        case .pink:
            return Color("PinkBackground")
        case .blue:
            return Color("BlueBackground")
        case .automatic:
            return Color("DefaultBackground")
        }
    }
    
    var buttonColor: Color {
        switch self {
        case .pink:
            return Color("PinkButton")
        case .blue:
            return Color("BlueButton")
        case .automatic:
            return Color("DefaultButton")
        }
    }
    
    func getColorWith(string: String?) -> Self {
        switch string {
        case "pink":
            return .pink
        case "blue":
            return .blue
        case "automatic":
            return .automatic
        default:
            return .automatic
        }
    }
}
