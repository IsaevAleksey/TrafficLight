//
//  ContentView.swift
//  TrafficLight
//
//  Created by Алексей Исаев on 13.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    enum CurrentSignal {
        case red
        case yellow
        case green
    }
    
    @State private var currentLight = CurrentSignal.red
    @State private var buttonLabel = "START"
    @State private var redLight = 0.5
    @State private var yellowLight = 0.5
    @State private var greenLight = 0.5

    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                CircleView(color: .red, opacity: redLight)
                CircleView(color: .yellow, opacity: yellowLight)
                CircleView(color: .green, opacity: greenLight)
                Spacer()
                Button(action: { buttonPressed() }) {
                        Text(buttonLabel)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                .frame(width: 200, height: 50)
                .background(Color(.systemBlue))
                .cornerRadius(40)
            }
        }
    }
    
    private func buttonPressed() {
        let lightOn = 1.0
        let lightOff = 0.5
        
        if buttonLabel == "START" {
            buttonLabel = "NEXT"
        }
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLight = lightOn
            greenLight = lightOff

        case .yellow:
            currentLight = .green
            yellowLight = lightOn
            redLight = lightOff

        default:
            currentLight = .red
            greenLight = lightOn
            yellowLight = lightOff
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
