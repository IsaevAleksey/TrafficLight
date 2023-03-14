//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Алексей Исаев on 13.03.2023.
//

import SwiftUI

struct ButtonView: View {
    
    @State var buttonLabel: String
    
    var body: some View {
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
    
    private func buttonPressed() {
        if buttonLabel == "START" {
            buttonLabel = "NEXT"
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonLabel: "START")
    }
}
