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
        SimpleEntryMedium(date: Date(), configuration: MediumIntent())
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
    
    let defaultColor: ShortcutWidgetColor

    var body: some View {
        ShortcutWidgetMediumView(
            defaultColor: defaultColor.getColorWith(string: entry.configuration.widgetColor?.identifier))
    }
}

struct ShortcutWidgetMedium: Widget {
    let kind: String = "ShortcutWidgetMedium"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind,
                            intent: MediumIntent.self,
                            provider: ProviderMedium()) { entry in
            ShortcutWidgetEntryMediumView(entry: entry,
                                          defaultColor: ShortcutWidgetColor.automatic)
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
                                      defaultColor: ShortcutWidgetColor.automatic)
        .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

