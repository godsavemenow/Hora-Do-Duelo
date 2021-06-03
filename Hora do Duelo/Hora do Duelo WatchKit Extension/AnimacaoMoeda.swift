//
//  AnimacaoMoeda.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct AnimacaoMoeda: View {
    let moeda = ["Cara", "DeLado", "Coroa", "DeLado"]
    @State var activeImageIndex = 0
    let imageSwitchTimer = Timer.publish(every: 0.3, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack{
            Image(uiImage: UIImage(named: moeda[activeImageIndex])!)
                .onReceive(imageSwitchTimer) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.moeda.count
                }
        }
    }
}

struct AnimacaoMoeda_Previews: PreviewProvider {
    static var previews: some View {
        AnimacaoMoeda()
    }
}
