//
//  AnimacaoDados.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Alexandra Zarzar on 03/06/21.
//

import SwiftUI

struct AnimacaoDados: View {
    let dados = ["Dado1", "Dado2", "Dado3", "Dado4", "Dado5", "Dado6"]
    @State var activeImageIndex = 0
    let imageSwitchTimer = Timer.publish(every: 0.3, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack{
            Image(uiImage: UIImage(named: dados[activeImageIndex])!)
                .onReceive(imageSwitchTimer) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.dados.count
                }
        }
    }
}

struct AnimacaoDados_Previews: PreviewProvider {
    static var previews: some View {
        AnimacaoDados()
    }
}
