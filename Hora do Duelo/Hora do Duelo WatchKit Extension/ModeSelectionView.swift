//
//  ModeSelectionView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct ModeSelectionView: View {
    var body: some View {
        VStack {
            
            Text("Escolha um modo:")
            Spacer()
            BotaoMestre(texto: "Jo-Ken-Po", proximaView: ContatosView())
            BotaoMestre(texto: "Dados", proximaView: TelaDoDado(motion: MotionManager()))
            BotaoMestre(texto: "Cara ou Coroa", proximaView: TelaDaMoeda(motion: MotionManager()))
        }
    }
}

struct ModeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ModeSelectionView()
    }
}
