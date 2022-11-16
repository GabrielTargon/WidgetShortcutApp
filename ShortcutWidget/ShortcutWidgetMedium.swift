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
            widgetColor: widgetColor.getColorWith(string: entry.configuration.widgetColor?.identifier),
            widgetActionOne: widgetAction.getActionWith(string: entry.configuration.widgetActionOne?.identifier),
            widgetActionTwo: widgetAction.getActionWith(string: entry.configuration.widgetActionTwo?.identifier),
            widgetActionThree: widgetAction.getActionWith(string: entry.configuration.widgetActionThree?.identifier),
            widgetActionFour: widgetAction.getActionWith(string: entry.configuration.widgetActionFour?.identifier),
            widgetActionFive: widgetAction.getActionWith(string: entry.configuration.widgetActionFive?.identifier))
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

