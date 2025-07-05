//
//  AddGoalView.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

struct AddGoalView: View {
    @EnvironmentObject var goalData: GoalData
    @Environment(\.dismiss) var dismiss
    @State private var goalTitle: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    var body: some View {
        VStack(spacing: 30) {
            
            VStack {
                Text("목표설정하기")
                    .foregroundStyle(Color.text01)
                    .font(.system(size: 20, weight: .bold))
                
                TextField("여기에 목표를 적어보세요.", text:$goalTitle)
                    .textFieldStyle(RoundedTextFieldStyle())
                    .padding(.horizontal, 20)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.text01)
            }
            
            GoalPeriodPicker(startDate: $startDate, endDate: $endDate)

            Button {
                let newGoal = Goal(
                    goalTitle: goalTitle,
                    startDate: startDate,
                    endDate: endDate
                )
                goalData.activeGoals.append(newGoal)
                dismiss()
            } label: {
                goalAddButtonStyle
            }
            .buttonStyle(.plain)
            .padding(.top, 50)
            }
        }
}

// MARK: - 목표생성버튼스타일
private var goalAddButtonStyle: some View {
    Text("목표생성하기")
        .font(.title3)
        .bold()
        .padding(.vertical,20)
        .padding(.horizontal, 60)
        .background(.white)
        .clipShape(.capsule)
        .foregroundStyle(Color.accentColor)
        .shadow(
            color:Color.accentColor,
            radius: 2,
            x: 0,
            y: 0
        )
}



struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color(red: 0.9569, green: 0.9569, blue: 0.9569))
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    AddGoalView()
        .environmentObject(GoalData())
}
