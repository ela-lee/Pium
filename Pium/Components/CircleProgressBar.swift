//
//  CircleProgressBar.swift
//  Pium
//
//  Created by Ella's Mac on 7/5/25.
//

import SwiftUI

struct CircleProgressBar: View {
    var progress: Double
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10)
                .frame(width: 70, height: 70)
                .foregroundStyle(Color(.background))
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .frame(width: 70, height: 70)
                .rotationEffect(.degrees(-90))
                .foregroundStyle(Color(.accent))
            
            Image(imageName(for: progress))
                .resizable()
                .frame(width:40, height:40)
        }
    }
}


func imageName (for progress: Double) -> String {
    if progress >= 1 {
        return "flower"
    } else if progress >= 0.5 {
        return "sporut"
    } else {
        return "seed"
    }
}
//#Preview {
//    CircleProgressBar()
//}
