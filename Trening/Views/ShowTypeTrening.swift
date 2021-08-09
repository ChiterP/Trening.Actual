//
//  ShowTypeTrening.swift
//  Trening
//
//  Created by 18316409 on 06.07.2021.
//

import SwiftUI

struct ShowTypeTrening: View {
    @Binding var showModal: Bool
    
    @State var typeTrenings: [TypeTrening] = StorageManager.shared.fetchNameTrening()
//    @State var inputTrenings: [InputTrening] = StorageManager.shared.fetchInputTrening()
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Text("Всего типов упражнений: ")
                    Text("\(typeTrenings.count)")
                        .frame(width: 30, alignment: .leading)
                    
                }
                .padding()
                
                List {
                    ForEach(typeTrenings, id: \.self) { trening in
                        NavigationLink(destination: Details(typeTrening: trening))
                        {
                            TreningRow(typeTrening: trening)
                        }
                        
                    }
                    
                    .onDelete(perform: { indexSet in
                        indexSet.forEach {
                            typeTrenings.remove(at: $0)
                            StorageManager.shared.deleteNameTrening(at: $0)
                        }
                    }
                    )
                }
                .navigationBarTitle("Мои тренировки")
            }
        }
    }
}

struct ShowTypeTrening_Previews: PreviewProvider {
    
    static let typeTrenings = TypeTrening.getTypeTreningList()
    
    static var previews: some View {
        ShowTypeTrening(
            showModal: .constant(false))
    }
}
