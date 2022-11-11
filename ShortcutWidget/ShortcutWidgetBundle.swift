//
//  ShortcutWidgetBundle.swift
//  ShortcutWidget
//
//  Created by Gabriel Targon on 10/11/22.
//

import WidgetKit
import SwiftUI

@main
struct ShortcutWidgetBundle: WidgetBundle {
    var body: some Widget {
        ShortcutWidgetSmall()
        ShortcutWidgetMedium()
    }
}
