//
//  IntentHandler.swift
//  ShortcutWidgetIntents
//
//  Created by Gabriel Targon on 10/11/22.
//

import Intents

class IntentHandler: INExtension, SmallIntentHandling {
    func provideWidgetColorOptionsCollection(for intent: SmallIntent, with completion: @escaping (INObjectCollection<WidgetColor>?, Error?) -> Void) {
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
    
    func provideWidgetActionOptionsCollection(for intent: SmallIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
//    func provideShortcutColorOptionsCollection(for intent: ConfigurationIntent,
//                                              with completion: @escaping (INObjectCollection<ShortcutColor>?, Error?) -> Void) {
//        var colors: [ShortcutColor] = []
//
//        let defaultColor = ShortcutColor(identifier: "automatic", display: "Automatic")
//        colors.append(defaultColor)
//
//        let pinkColor = ShortcutColor(identifier: "pink", display: "Pink")
//        colors.append(pinkColor)
//
//        let darkColor = ShortcutColor(identifier: "blue", display: "Blue")
//        colors.append(darkColor)
//
//        // Create a collection with the array of characters.
//        let collection = INObjectCollection(items: colors)
//
//        // Call the completion handler, passing the collection.
//        completion(collection, nil)
//    }
}

extension IntentHandler: MediumIntentHandling {
    func provideWidgetActionOneOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
    func provideWidgetActionOneOptionsCollection(for intent: MediumIntent) async throws -> INObjectCollection<WidgetAction> {
        <#code#>
    }
    
    func provideWidgetActionTwoOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
    func provideWidgetActionTwoOptionsCollection(for intent: MediumIntent) async throws -> INObjectCollection<WidgetAction> {
        <#code#>
    }
    
    func provideWidgetActionThreeOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
    func provideWidgetActionThreeOptionsCollection(for intent: MediumIntent) async throws -> INObjectCollection<WidgetAction> {
        <#code#>
    }
    
    func provideWidgetActionFourOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
    func provideWidgetActionFourOptionsCollection(for intent: MediumIntent) async throws -> INObjectCollection<WidgetAction> {
        <#code#>
    }
    
    func provideWdigetActionFiveOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        <#code#>
    }
    
    func provideWdigetActionFiveOptionsCollection(for intent: MediumIntent) async throws -> INObjectCollection<WidgetAction> {
        <#code#>
    }
    
    func provideWidgetColorOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetColor>?, Error?) -> Void) {
        <#code#>
    }
    
    
    
    
}
