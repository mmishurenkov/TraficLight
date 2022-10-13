//
//  ContentView.swift
//  TraficLigth
//
//  Created by Михаил Мишуренков on 12.10.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
            case .red:
                currentLight = .yellow
                greenLightState = lightIsOff
                redLightState = lightIsOn
                
            case .yellow:
                currentLight = .green
                redLightState = lightIsOff
                yellowLightState = lightIsOn
                
            case .green:
                currentLight = .red
                greenLightState = lightIsOn
                yellowLightState = lightIsOff
        }
    }
    
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
                
        VStack(spacing: 20) {
                    
            ColorCircle(color: .red, opacity: redLightState)
            ColorCircle(color: .yellow, opacity: yellowLightState)
            ColorCircle(color: .green, opacity: greenLightState)
                    
            Spacer()
                    
            ChangeColorButton(title: buttonTitle) {
                if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                nextColor()
            }
        }
        .padding()
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
