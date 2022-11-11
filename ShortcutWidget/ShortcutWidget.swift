//
//  ShortcutWidget.swift
//  ShortcutWidget
//
//  Created by Gabriel Targon on 10/11/22.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)

        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct ShortcutWidgetEntryView : View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    var entry: Provider.Entry
    
    let defaultColor: ShortcutWidgetColorLogic

    var body: some View {
        switch family {
        case .systemSmall:
            ShortcutWidgetSmallView(defaultColor: defaultColor.getColorWith(string: entry.configuration.shortcutColor?.identifier ?? String()))
        case .systemMedium:
            ShortcutWidgetMediumView(defaultColor: defaultColor.getColorWith(string: entry.configuration.shortcutColor?.identifier ?? String()))
        @unknown default:
            ShortcutWidgetMediumView(defaultColor: defaultColor.getColorWith(string: entry.configuration.shortcutColor?.identifier ?? String()))
        }
    }
}

struct ShortcutWidget: Widget {
    let kind: String = "ShortcutWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            ShortcutWidgetEntryView(entry: entry,
                                    defaultColor: ShortcutWidgetColorLogic.automatic)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

struct ShortcutWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ShortcutWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()), defaultColor: ShortcutWidgetColorLogic.automatic)
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            ShortcutWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()), defaultColor: ShortcutWidgetColorLogic.automatic)
                .previewContext(WidgetPreviewContext(family: .systemMedium))
        }
    }
}
