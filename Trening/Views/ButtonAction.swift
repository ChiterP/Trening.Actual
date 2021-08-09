//
//  ButtonAction.swift
//  Trening
//
//  Created by Алексей Сергейцев on 8/7/21.
//

import SwiftUI

struct ButtonAction: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 100, height: 40)
        .background(Color(.darkGray))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
        )
    }
}

struct ButtonAction_Previews: PreviewProvider {
    static var previews: some View {
        ButtonAction(title: "Назад", action: {})
    }
}
