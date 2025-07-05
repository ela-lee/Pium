//
//  MainView.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment:.bottom) {
                Color(.background)
                    .ignoresSafeArea(edges: .all)
                
                TabView {
                    Tab("진행중인 목표", systemImage: "list.bullet.clipboard.fill") {
                        ActiveGoalView()
                    }
                    
                    Tab("지난 목표", systemImage: "checklist.checked") {
                        EndedGoalView()
                    }
                }
                
                NavigationLink {
                    AddGoalView()
                } label: {
                    addGoalButton
                }
            }
        }
    }
}

// MARK: - 목표추가버튼
private var addGoalButton: some View {
    ZStack {
    
        Circle()
            .frame(width: 60, height: 60)
            .foregroundStyle(Color.accentColor)
        
        Image(systemName: "plus")
            .foregroundStyle(Color.white)
            .bold()
    }
}

#Preview {
    MainView()
        .environmentObject(GoalData())
}
