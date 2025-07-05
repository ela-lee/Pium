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
}


class GoalData: ObservableObject {
    @Published var activeGoals: [Goal] = []
    @Published var endedGoals: [Goal] = []
}
