//
//  ChangeColorButton.swift
//  TraficLigth
//
//  Created by Михаил Мишуренков on 13.10.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay( // Наложение
            RoundedRectangle(cornerRadius: 20, style: .continuous)
            // Скругленный прямоугольник, .беспрерывная линия
                .stroke(Color.white, lineWidth: 5))
                // Шов
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
