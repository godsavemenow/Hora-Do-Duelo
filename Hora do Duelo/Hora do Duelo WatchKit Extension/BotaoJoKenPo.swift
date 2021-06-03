//
//  BotaoJoKenPo.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Eduardo Lopes on 03/06/21.
//

import SwiftUI

struct BotaoJoKenPo<DestinationType: View>: View {
    var imagem: String
    var startPoint = UnitPoint(x: 0, y: 0.33)
    var endPoint = UnitPoint(x: 0, y: 1)
    var proximaView: DestinationType
    
    var body: some View {
        NavigationLink(destination: proximaView){
            Image(imagem)
                .resizable()
                .frame(width: 45, height: 45)

        }
//        .frame(width: 33, height: 33)
//        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058824, green: 0.06666666667, blue: 0.9019607843, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: startPoint, endPoint: endPoint))
//        .cornerRadius(50)
        }
    }

//struct BotaoJoKenPo_Previews: PreviewProvider {
//    static var previews: some View {
//        BotaoJoKenPo()
//    }
//}
