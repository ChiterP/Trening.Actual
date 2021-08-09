//
//  ButtonView.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct Details: View {
    
    let typeTrening: TypeTrening
    let inputTrenings = StorageManager.shared.fetchInputTrening()
    
    @State private var isPresent = false
    
    var body: some View {
        
        
        
        VStack {
            List {
                ForEach(inputTrenings, id: \.self) { trening in
                    if trening.treningType.nameTrening == typeTrening.nameTrening {
                        Text(trening.date, style: .date)
                            .foregroundColor(.red)
                        
                        if trening.oneRepeat != "" {
                            HStack {
                                Text("Подход 1: \(trening.oneRepeat)")
                                Text("\(trening.oneOneRepeat)")
                            }
                        }
                        
                        if trening.twoRepeat != "" {
                            HStack {
                                Text("Подход 2: \(trening.twoRepeat)")
                                Text("\(trening.twoOneRepeat)")
                            }
                        }
                        
                        if trening.treeRepeat != "" {
                            HStack {
                                Text("Подход 3: \(trening.treeRepeat)")
                                Text("\(trening.treeOneRepeat)")
                            }
                        }
                        
                        if trening.fourRepeat != "" {
                            HStack {
                                Text("Подход 4: \(trening.fourRepeat)")
                                Text("\(trening.fourOneRepeat)")
                            }
                        }
                        
                        if trening.fiveRepeat != "" {
                            HStack {
                                Text("Подход 5: \(trening.fiveRepeat)")
                                Text("\(trening.fiveOneRepeat)")
                            }
                        }
                    }
                }
            }
            .colorMultiply(Color.gray)
//            .navigationBarTitle("\(typeTrening.nameTrening)")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {

    static let typeTrenings = TypeTrening.getTypeTreningList()[0]
    

    static var previews: some View {
        Details(typeTrening: typeTrenings)
    }
}

