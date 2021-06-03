//
//  BotaoMestre.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Alexandra Zarzar on 31/05/21.
//

import SwiftUI

struct BotaoMestre<DestinationType: View>: View {
    var texto: String
    var startPoint = UnitPoint(x: 0, y: 0.33)
    var endPoint = UnitPoint(x: 0, y: 1)
    var proximaView: DestinationType
    
    var body: some View {
        NavigationLink(destination: proximaView){
            Text(texto)
        }.frame(width: 160, height: 33)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058824, green: 0.06666666667, blue: 0.9019607843, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: startPoint, endPoint: endPoint))
        .cornerRadius(50)
    }
}

struct BotaoMestre_Previews: PreviewProvider {
    static var previews: some View {
        BotaoMestre(texto: "OK", proximaView: DueloView())
            .previewDevice("Apple Watch Series 6 - 40mm")
    }
}
