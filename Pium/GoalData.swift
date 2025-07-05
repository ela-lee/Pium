//
//  GoalData.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import Foundation

struct Goal: Identifiable {
    var id = UUID()
    var goalTitle: String
    var startDate: Date
    var endDate: Date
    var completedDates: Set<Date> = []
    var progress: Double {
        let component = Calendar.current.dateComponents([.day], from: startDate, to: endDate)
        let dayDiff = component.day ?? 0
        let totalDays = max(dayDiff + 1, 1)
        let completedDays = completedDates.count
        return Double(completedDays) / Double(totalDays)
    }
}


class GoalData: ObservableObject {
    @Published var activeGoals: [Goal] = []
    @Published var endedGoals: [Goal] = []
}
