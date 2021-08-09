//
//  Button.swift
//  Trening
//
//  Created by Алексей Сергейцев on 8/7/21.
//

import SwiftUI

struct ButtonStartView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action){
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .font(.system(size: 20))
        }
        .padding()
        .frame(width: 300, height: 60)
        .background(Color(.darkGray))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
        )
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStartView(title: "Start", action: {})
    }
}
