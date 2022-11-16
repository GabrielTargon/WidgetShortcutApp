//
//  IntentHandler.swift
//  ShortcutWidgetIntents
//
//  Created by Gabriel Targon on 10/11/22.
//

import Intents

class IntentHandler: INExtension, SmallIntentHandling {
    func provideWidgetColorOptionsCollection(for intent: SmallIntent, with completion: @escaping (INObjectCollection<WidgetColor>?, Error?) -> Void) {
        let colors: [WidgetColor] = [
            WidgetColor(identifier: "automatic", display: "Automatic"),
            WidgetColor(identifier: "light", display: "Light"),
            WidgetColor(identifier: "dark", display: "Dark")
        ]
        
        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: colors)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    func provideWidgetActionOptionsCollection(for intent: SmallIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
}

extension IntentHandler: MediumIntentHandling {
    func provideWidgetActionOneOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    func provideWidgetActionTwoOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    func provideWidgetActionThreeOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    func provideWidgetActionFourOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    func provideWdigetActionFiveOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetAction>?, Error?) -> Void) {
        let actions: [WidgetAction] = [
            WidgetAction(identifier: "home", display: "Home"),
            WidgetAction(identifier: "email", display: "Email"),
            WidgetAction(identifier: "call", display: "Call"),
            WidgetAction(identifier: "profile", display: "Profile"),
            WidgetAction(identifier: "config", display: "Config")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: actions)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }

    func provideWidgetColorOptionsCollection(for intent: MediumIntent, with completion: @escaping (INObjectCollection<WidgetColor>?, Error?) -> Void) {
        let colors: [WidgetColor] = [
            WidgetColor(identifier: "automatic", display: "Automatic"),
            WidgetColor(identifier: "light", display: "Light"),
            WidgetColor(identifier: "dark", display: "Dark")
        ]

        // Create a collection with the array of characters.
        let collection = INObjectCollection(items: colors)

        // Call the completion handler, passing the collection.
        completion(collection, nil)
    }
    
    
    
    
}
