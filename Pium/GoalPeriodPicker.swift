//
//  GoalPeriodPicker.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

struct GoalPeriodPicker: View {
    @Binding var startDate: Date
    @Binding var endDate: Date
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack {
                Text("시작일")
                    .foregroundStyle(Color.text01)
                    .font(.system(size: 20, weight: .bold))
                
                DatePicker ("",
                            selection: $startDate,
                            displayedComponents: .date
                )
                .datePickerStyle(.compact)
                .labelsHidden()
                .environment(\.locale, .init(identifier: "ko_KR"))
            }
            
            Spacer()
            
            Divider()
                .frame(height: 60)
            
            Spacer()
            
            VStack {
                Text("마감일")
                    .foregroundStyle(Color.text01)
                    .font(.system(size: 20, weight: .bold))
                DatePicker ("",
                            selection: $endDate,
                            displayedComponents: .date
                )
                .datePickerStyle(.compact)
                .labelsHidden()
                .environment(\.locale, .init(identifier: "ko_KR"))
            }
            
            Spacer()
        }
    }
    
}

