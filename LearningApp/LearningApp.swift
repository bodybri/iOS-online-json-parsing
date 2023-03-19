//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Bryan Huang on 3/18/23.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
