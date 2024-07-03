//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Oleg Gavashi on 03.07.2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
