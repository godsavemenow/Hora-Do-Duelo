//
//  TelaDePedra.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct TelaDePedra: View {
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
                Image("Pedra")
                    .resizable()
                    .frame(width: 45, height: 45)
                
                Text("VS.")
                
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
                resultado = "1"
            }
            if inimigo == "Papel" {
                resultado = "2"
            }
            if inimigo == "Pedra" {
                resultado = "3"
            }
        }
    }
}

struct TelaDePedra_Previews: PreviewProvider {
    static var previews: some View {
        TelaDePedra(resultado: "")
    }
}
