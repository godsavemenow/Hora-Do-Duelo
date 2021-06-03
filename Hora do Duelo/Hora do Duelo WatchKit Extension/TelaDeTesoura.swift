//
//  TelaDePedra.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct TelaDeTesoura: View {
    let jokenpo = ["Pedra", "Papel", "Tesoura"]
    @State var resultado: String = ""
    @State var inimigo: String = ""

    var body: some View {
        VStack {
            Spacer()
            if resultado == "1" {
                Text("Você ganhou!")
            }
            if resultado == "2" {
                Text("Você perdeu!")
            }
            if resultado == "3" {
                Text("Empatou!")
            }
            Spacer()
            HStack{
                Image("Tesoura")
                    .resizable()
                    .frame(width: 45, height: 45)
                
                Text(" VS. ")
                
                Image(inimigo)
                    .resizable()
                    .frame(width: 45, height: 45)
            }
            Spacer()
            BotaoMestre(texto: "OK", proximaView: HomeView())
        }
        .onAppear(){
            self.inimigo = jokenpo.randomElement()!
            if inimigo == "Tesoura" {
                resultado = "3"
            }
            if inimigo == "Papel" {
                resultado = "1"
            }
            if inimigo == "Pedra" {
                resultado = "2"
            }
        }
    }
}

struct TelaDeTesoura_Previews: PreviewProvider {
    static var previews: some View {
        TelaDeTesoura(resultado: "")
    }
}
