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
            
            if motion.roll == false {
                Image(moeda.randomElement()!)
                    .resizable()
                    .frame(width: 87, height: 80)
                Spacer()
            }
            else {
                AnimacaoMoeda()
                Spacer()
            }
            Text("Balance seu braço!")
        }
    }
}


struct TelaDaMoeda_Previews: PreviewProvider {
    static var previews: some View {
        TelaDaMoeda(motion: MotionManager())
    }
}
