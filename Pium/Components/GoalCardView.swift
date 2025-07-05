//
//  GoalCardView.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

struct GoalCardView: View {
    var goal: Goal
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.white)
                .frame(height:125)
            
            HStack(spacing:20) {
                CircleProgressBar(progress: goal.progress)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(goal.goalTitle)
                        .foregroundStyle(.text01)
                        .font(.system(size: 14, weight: .bold))
                    
                    Text("\(Formatter.koreanDate.string(from: goal.startDate)) ~ \(Formatter.koreanDate.string(from: goal.endDate))")
                        .foregroundStyle(.text02)
                        .font(.system(size: 10, weight: .bold))
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

extension Formatter {
    static let koreanDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter
        
    }()
}


#Preview {
    GoalCardView(goal: Goal(
        goalTitle: "책 10권 읽기",
        startDate: Date(),
        endDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!
    ))
}
