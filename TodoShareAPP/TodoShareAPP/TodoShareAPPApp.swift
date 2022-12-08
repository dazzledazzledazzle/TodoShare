//
//  TodoShareAPPApp.swift
//  TodoShareAPP
//
//  Created by 시혁 on 2022/11/29.
//

import SwiftUI

@main
struct TodoShareAPPApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .accentColor(.orange)
        }
    }
}
