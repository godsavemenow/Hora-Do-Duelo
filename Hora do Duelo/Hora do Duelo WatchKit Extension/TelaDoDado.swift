//
//  TelaDoDado.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Felipe on 03/06/21.
//

import SwiftUI

struct TelaDoDado: View {
    let dados = ["Dado1", "Dado2", "Dado3", "Dado4", "Dado5", "Dado6"]
    var body: some View {
        VStack {
            Spacer()
            
            Image(dados.randomElement()!)
                .resizable()
                .frame(width: 87, height: 80)
            Spacer()
        }
    }
}

struct TelaDoDado_Previews: PreviewProvider {
    static var previews: some View {
        TelaDoDado()
    }
}
