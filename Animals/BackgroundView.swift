//
//  BackgroundView.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import SwiftUI

struct BackgroundView: View {
    
    let colorList: [Color] = [
        .pink,
        .yellow,
        .blue,
        .red
    ]
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colorList),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.7)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
