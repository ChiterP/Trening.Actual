//
//  StartView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//
// Экран "Мои тренировки"

import SwiftUI

struct StartView: View {
    
    @State private var isPresentedInput = false
    @State private var isPresentedShow = false
    @State private var isPresentedProcess = false
    @State private var isPresentedHistory = false
    
    
    @State private var isUpdateView = false
    
    let typeTrenings = StorageManager.shared.fetchNameTrening()
    let inputTrenings = StorageManager.shared.fetchInputTrening()
    
    @Binding var treningType: String
    
    var body: some View {
        
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Мои тренировки")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                
                ButtonStartView(title: "Добавить упражнение") {
                    isPresentedInput.toggle()
                }
                .sheet(isPresented: $isPresentedInput) {
                    InTreningTypeView(showModal: $isPresentedInput,
                                      UpdateView: $isUpdateView)
                }
                
                ButtonStartView(title: "Мои тренировки") {
                    isPresentedShow.toggle()
                }
                .sheet(isPresented: $isPresentedShow) {
                    ShowTypeTrening(
                        showModal: $isPresentedShow)
                    
                }
                
                ButtonStartView(title: "Записать тренировку") {
                    isPresentedProcess.toggle()
                }
                .sheet(isPresented: $isPresentedProcess) {
                    ChooseTrenig(
                        showModal: $isPresentedProcess)
                    
                }

                ButtonStartView(title: "История тренировок") {
                    isPresentedHistory.toggle()
                }
                .sheet(isPresented: $isPresentedHistory) {
                    ViewTreningHistory(
                        showModal: $isPresentedHistory)
                }
                Spacer()
            }
        }
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(treningType: .constant("Mook_2"))
    }
}
