//
//  ShortcutWidgetMedium.swift
//  ShortcutApp
//
//  Created by Gabriel Targon on 11/11/22.
//

import WidgetKit
import SwiftUI
import Intents

struct ProviderMedium: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntryMedium {
        SimpleEntryMedium(date: Date(),
                          configuration: MediumIntent())
    }

    func getSnapshot(for configuration: MediumIntent,
                     in context: Context,
                     completion: @escaping (SimpleEntryMedium) -> ()) {
        let entry = SimpleEntryMedium(date: Date(),
                                      configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: MediumIntent,
                     in context: Context,
                     completion: @escaping (Timeline<Entry>) -> ()) {
        let entry = SimpleEntryMedium(date: Date(),
                                      configuration: configuration)

        let timeline = Timeline(entries: [entry],
                                policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntryMedium: TimelineEntry {
    let date: Date
    let configuration: MediumIntent
}

struct ShortcutWidgetEntryMediumView: View {
    var entry: ProviderMedium.Entry
    
    let widgetColor: ShortcutWidgetColor
    let widgetAction: ShortcutWidgetAction

    var body: some View {
        ShortcutWidgetMediumView(
            widgetColor: widgetColor.getColorFrom(raw: entry.configuration.widgetColor.rawValue),
            widgetActionOne: widgetAction.getActionFrom(raw: entry.configuration.widgetActionOne.rawValue),
            widgetActionTwo: widgetAction.getActionFrom(raw: entry.configuration.widgetActionTwo.rawValue),
            widgetActionThree: widgetAction.getActionFrom(raw: entry.configuration.widgetActionThree.rawValue),
            widgetActionFour: widgetAction.getActionFrom(raw: entry.configuration.widgetActionFour.rawValue),
            widgetActionFive: widgetAction.getActionFrom(raw: entry.configuration.widgetActionFive.rawValue))
    }
}

struct ShortcutWidgetMedium: Widget {
    let kind: String = "ShortcutWidgetMedium"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind,
                            intent: MediumIntent.self,
                            provider: ProviderMedium()) { entry in
            ShortcutWidgetEntryMediumView(entry: entry,
                                          widgetColor: ShortcutWidgetColor.automatic,
                                          widgetAction: ShortcutWidgetAction.home)
        }
        .configurationDisplayName("Shortcut")
        .description("A medium shortcut widget for your app.")
        .supportedFamilies([.systemMedium])
    }
}

struct ShortcutWidgetMedium_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutWidgetEntryMediumView(entry: SimpleEntryMedium(date: Date(),
                                                               configuration: MediumIntent()),
                                      widgetColor: ShortcutWidgetColor.automatic,
                                      widgetAction: ShortcutWidgetAction.home)
        .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

