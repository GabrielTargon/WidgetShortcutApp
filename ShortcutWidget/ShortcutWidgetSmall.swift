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
                         configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent,
                     in context: Context,
                     completion: @escaping (SimpleEntrySmall) -> ()) {
        let entry = SimpleEntrySmall(date: Date(),
                                     configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent,
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
    let configuration: ConfigurationIntent
}

struct ShortcutWidgetEntrySmallView : View {
    var entry: ProviderSmall.Entry
    
    let defaultColor: ShortcutWidgetColor

    var body: some View {
        ShortcutWidgetSmallView(
            defaultColor: defaultColor.getColorWith(string: entry.configuration.shortcutColor?.identifier))
    }
}

struct ShortcutWidgetSmall: Widget {
    let kind: String = "ShortcutWidgetSmall"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind,
                            intent: ConfigurationIntent.self,
                            provider: ProviderSmall()) { entry in
            ShortcutWidgetEntrySmallView(entry: entry,
                                         defaultColor: ShortcutWidgetColor.automatic)
        }
        .configurationDisplayName("Shortcut")
        .description("A small shortcut widget for your app.")
        .supportedFamilies([.systemSmall])
    }
}

struct ShortcutWidgetSmall_Previews: PreviewProvider {
    static var previews: some View {
            ShortcutWidgetEntrySmallView(entry: SimpleEntrySmall(date: Date(),
                                                                 configuration: ConfigurationIntent()),
                                         defaultColor: ShortcutWidgetColor.automatic)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
