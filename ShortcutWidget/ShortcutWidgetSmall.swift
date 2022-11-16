//
//  ShortcutWidgetSmall.swift
//  ShortcutWidget
//
//  Created by Gabriel Targon on 10/11/22.
//

import WidgetKit
import SwiftUI
import Intents

struct ProviderSmall: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntrySmall {
        SimpleEntrySmall(date: Date(),
                         configuration: SmallIntent())
    }

    func getSnapshot(for configuration: SmallIntent,
                     in context: Context,
                     completion: @escaping (SimpleEntrySmall) -> ()) {
        let entry = SimpleEntrySmall(date: Date(),
                                     configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: SmallIntent,
                     in context: Context,
                     completion: @escaping (Timeline<Entry>) -> ()) {
        let entry = SimpleEntrySmall(date: Date(),
                                     configuration: configuration)

        let timeline = Timeline(entries: [entry],
                                policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntrySmall: TimelineEntry {
    let date: Date
    let configuration: SmallIntent
}

struct ShortcutWidgetEntrySmallView : View {
    var entry: ProviderSmall.Entry
    
    let widgetColor: ShortcutWidgetColor
    let widgetAction: ShortcutWidgetAction

    var body: some View {
        ShortcutWidgetSmallView(
            widgetColor: widgetColor.getColorFrom(raw: entry.configuration.widgetColor.rawValue),
            widgetAction: widgetAction.getActionFrom(raw: entry.configuration.widgetAction.rawValue))
    }
}

struct ShortcutWidgetSmall: Widget {
    let kind: String = "ShortcutWidgetSmall"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind,
                            intent: SmallIntent.self,
                            provider: ProviderSmall()) { entry in
            ShortcutWidgetEntrySmallView(entry: entry,
                                         widgetColor: ShortcutWidgetColor.automatic,
                                         widgetAction: ShortcutWidgetAction.home)
        }
        .configurationDisplayName("Shortcut")
        .description("A small shortcut widget for your app.")
        .supportedFamilies([.systemSmall])
    }
}

struct ShortcutWidgetSmall_Previews: PreviewProvider {
    static var previews: some View {
            ShortcutWidgetEntrySmallView(entry: SimpleEntrySmall(date: Date(),
                                                                 configuration: SmallIntent()),
                                         widgetColor: ShortcutWidgetColor.automatic,
                                         widgetAction: ShortcutWidgetAction.home)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
