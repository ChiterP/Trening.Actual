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
            HStack {
                Spacer()
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Spacer()
            }
        }
        .padding()
        .background(Color(.darkGray))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 2)
        )
        .frame(height: 60)
        .contentShape(Rectangle())
        .padding(.horizontal)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStartView(title: "Start", action: {})
    }
}
