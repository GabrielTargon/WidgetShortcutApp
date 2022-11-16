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
    
    func getColorFrom(raw: Int) -> Self {
        switch raw {
        case 1:
            return .light
        case 2:
            return .dark
        case 3:
            return .automatic
        default:
            return .automatic
        }
    }
}
