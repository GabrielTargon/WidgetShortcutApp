//
//  ShortcutData.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 10/11/22.
//

import Foundation

enum ShortcutURLs {
    case home
    case email
    case call
    case profile
    case config
    
    var url: URL {
        guard let url = URL(string: "shortcutApp://widget/\(self)") else {
            fatalError("Failed to construct url")
        }
        
        return url
    }
}

struct ShortcutData {
    
    let views: Views
    
    struct Views {
        let home: String
        let email: String
        let call: String
        let profile: String
        let config: String
        
        var url: URL {
            guard let url = URL(string: "shortcutApp://widget/\(self)") else {
                fatalError("Failed to construct url")
            }
            
            return url
        }
    }
}
