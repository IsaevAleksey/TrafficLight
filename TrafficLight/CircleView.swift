//
//  CircleView.swift
//  TrafficLight
//
//  Created by Алексей Исаев on 13.03.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double

    
    var body: some View {
        Circle()
            .foregroundColor(color).opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green, opacity: 0.5)
    }
}
