//
//  TelaDaMoeda.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct TelaDaMoeda: View {
    let moeda = ["Cara", "Coroa"]
    @ObservedObject
    var motion: MotionManager
    
    var body: some View {
        VStack {
            Spacer()
            
                Image(moeda[motion.diceface%2])
                    .resizable()
                    .frame(width: 87, height: 80)
                Spacer()
           
            Text("Balance seu braço!")
        }
    }
}


struct TelaDaMoeda_Previews: PreviewProvider {
    static var previews: some View {
        TelaDaMoeda(motion: MotionManager())
    }
}
