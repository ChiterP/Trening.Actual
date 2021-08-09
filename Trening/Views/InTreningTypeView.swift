//
//  InTreningTypeView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI


struct InTreningTypeView: View {
    @Binding var showModal: Bool
    @Binding var UpdateView: Bool
  
    @State private var treningType = ""
    
    var body: some View {
        
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                HStack {
                    Text("Добавь упражнение")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                }
                
                TextField("   Стойка на руках", text: $treningType)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 40
                           , alignment: .leading)
                    .border(Color.white, width: 1)
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1)
                    )
                    .padding()
                
                HStack {

                    ButtonAction(title: "Назад") {
                        showModal.toggle()
                    }
                    
                    Spacer()
                    
                    ButtonAction(title: "Готово") {
                        if !treningType.isEmpty {
                        StorageManager.shared.saveNameTrening(
                            nameTrening: TypeTrening.init(nameTrening: treningType)
                        )}
                        UpdateView.toggle()
                        showModal.toggle()
                    }
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct InTreningTypeView_Previews: PreviewProvider {
    static var previews: some View {
        InTreningTypeView(
            showModal: .constant(false),
            UpdateView: .constant(false))
    }
}
