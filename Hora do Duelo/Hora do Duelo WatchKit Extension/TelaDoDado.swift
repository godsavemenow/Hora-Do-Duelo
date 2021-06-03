//
//  TelaDoDado.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Felipe on 03/06/21.
//

import SwiftUI

struct TelaDoDado: View {
    let dados = ["Dado1", "Dado2", "Dado3", "Dado4", "Dado5", "Dado6"]
    @ObservedObject
    var motion: MotionManager
    
    var body: some View {
        VStack {
            Spacer()
           
            Image(dados[motion.diceface])
                .resizable()
                .frame(width: 87, height: 80)
            Spacer()
            
            Text("Balance seu braço!")
        }
    }
}

struct TelaDoDado_Previews: PreviewProvider {
    static var previews: some View {
        TelaDoDado(motion: MotionManager())
    }
}
