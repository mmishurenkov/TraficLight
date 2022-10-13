//
//  CircleColor.swift
//  TraficLigth
//
//  Created by Михаил Мишуренков on 12.10.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color // Цвет
    let opacity: Double // Прозрачность цвета 
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
            // .brightness(0.0) Яркость
            .overlay(Circle().stroke(Color.white,
                                     lineWidth: 5))
    }
}

struct CircleColor_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
