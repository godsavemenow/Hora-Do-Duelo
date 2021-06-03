//
//  ResultadoView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Alexandra Zarzar on 31/05/21.
//

import SwiftUI

struct ResultadoView: View {
    //var nomeVencedor: String
    var startPoint = UnitPoint(x: 0, y: 0.33)
    var endPoint = UnitPoint(x: 0, y: 1)
    var body: some View {
        VStack{
            Text("the winner is")
                .multilineTextAlignment(.leading)
                .frame(width: 141, alignment: .leading)
                .font(.system(size: 11))
                .foregroundColor(Color(#colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 1)))

            Text("Alexandra")
                .multilineTextAlignment(.leading)
                .frame(width: 141, alignment: .leading)
                .font(.system(size: 17))
            ZStack{
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058824, green: 0.06666666667, blue: 0.9019607843, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: startPoint, endPoint: endPoint))
                    .opacity(0.7)
                    .frame(width: 76, height: 76)
            }.padding(.bottom)
            BotaoMestre(texto: "OK", proximaView: ContentView())
                .padding(.bottom, -15)
        }.ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
}

struct ResultadoView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadoView()
            .previewDevice("Apple Watch Series 6 - 40mm")
    }
}
