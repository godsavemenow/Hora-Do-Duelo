//
//  ModeSelectionView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct ModeSelectionView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 7) {
                Text("Escolha um modo:")
                    .font(.system(size: 17))
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                BotaoMestre(texto: "Jo-Ken-Po", proximaView: ContatosView())
                BotaoMestre(texto: "Dados", proximaView: TelaDoDado(motion: MotionManager()))
                BotaoMestre(texto: "Cara ou Coroa", proximaView: TelaDaMoeda(motion: MotionManager()))
                BotaoMestre(texto: "Roleta da Sorte", proximaView: RoletaView())
            }
        }
    }
}

struct ModeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSelectionView()
    }
}
