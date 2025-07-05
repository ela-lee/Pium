//
//  PiumApp.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

@main
struct PiumApp: App {
    @StateObject var goalData = GoalData()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(goalData)
        }
    }
}
