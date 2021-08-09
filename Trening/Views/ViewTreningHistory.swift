//
//  ViewTreningProcess.swift
//  Trening
//
//  Created by 18316409 on 13.07.2021.
//

import SwiftUI

struct ViewTreningHistory: View {
    
    @Binding var showModal: Bool
    
    @State var inputTrenings: [InputTrening] = StorageManager.shared.fetchInputTrening()
    
    var body: some View {
        
        VStack {
            Text("Всего \(inputTrenings.count)")
                .padding(.top)
            
            List {
                ForEach(inputTrenings, id: \.self) { trening in
                    HStack {
                        Text("\(trening.treningType.nameTrening)")
                            .frame(width: 220, alignment: .leading)
                        Text("\((trening.date), style: .date)")
                            .frame(width: 150, alignment: .leading)
                    }
                }
                
                .onDelete(perform: { indexSet in
                    indexSet.forEach {
                        inputTrenings.remove(at: $0)
                        StorageManager.shared.deleteInputTrening(at: $0)
                    }
                }
                )
            }
        }
    }
}

struct ViewTreningProcess_Previews: PreviewProvider {
    static var previews: some View {
        ViewTreningHistory( showModal: .constant(false))
    }
}


