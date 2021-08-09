//
//  TreningRow.swift
//  Trening
//
//  Created by 18316409 on 07.07.2021.
//

import SwiftUI

struct TreningRow: View {
    
    let typeTrening: TypeTrening
    
    var body: some View {
        ZStack {
            Text("\(typeTrening.nameTrening)")
                .frame(width: 300, alignment: .leading)
        }
    }
}

struct FlightRow_Previews: PreviewProvider {
    static var previews: some View {
        TreningRow(typeTrening: TypeTrening.init(nameTrening: "Стойка"))
    }
}
