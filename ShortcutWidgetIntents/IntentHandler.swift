//
//  IntentHandler.swift
//  ShortcutWidgetIntents
//
//  Created by Gabriel Targon on 10/11/22.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    func provideShortcutColorOptionsCollection(for intent: ConfigurationIntent,
                                              with completion: @escaping (INObjectCollection<ShortcutColor>?, Error?) -> Void) {
        var colors: [ShortcutColor] = []
        
        let defaultColor = ShortcutColor(identifier: "automatic", display: "Automatic")
        colors.append(defaultColor)
        
        let pinkColor = ShortcutColor(identifier: "pink", display: "Pink")
        colors.append(pinkColor)
        
        let darkColor = ShortcutColor(identifier: "blue", display: "Blue")
        colors.append(darkColor)
        
        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: colors)
        
        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
}
