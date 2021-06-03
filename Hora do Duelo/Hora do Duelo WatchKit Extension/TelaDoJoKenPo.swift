//
//  TelaDoJoKenPo.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct TelaDoJoKenPo: View {
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment: .center, spacing: 7) {
                
                BotaoJoKenPo(imagem: "Pedra", proximaView: TelaDePedra())
                    .scaledToFill()
                BotaoJoKenPo(imagem: "Papel", proximaView: TelaDePapel())
                    .scaledToFill()
                BotaoJoKenPo(imagem: "Tesoura", proximaView: TelaDeTesoura())
                    .scaledToFill()
            }
            .frame(width: 33)
            .scaledToFit()
            Spacer()
            Text("Faça sua escolha!")
        }
    }
}

struct TelaDoJoKenPo_Previews: PreviewProvider {
    static var previews: some View {
        TelaDoJoKenPo()
    }
}
