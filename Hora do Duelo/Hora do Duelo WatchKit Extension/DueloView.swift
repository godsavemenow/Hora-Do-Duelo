//
//  DueloView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Alexandra Zarzar on 31/05/21.
//

import SwiftUI

struct DueloView: View {
    var desafianteImage: Image?
    var desafiadoImage: Image?
    
    var body: some View {
        VStack{
            desafianteImage
            Text("VS")
                .font(.system(size: 30))
                .fontWeight(.medium)
                .foregroundColor(Color(#colorLiteral(red: 0.2392156863, green: 0.4666666667, blue: 0.7333333333, alpha: 1)))
            desafiadoImage
            BotaoMestre(texto: "OK", proximaView: ResultadoView())
        }
    }
}

struct DueloView_Previews: PreviewProvider {
    static var previews: some View {
        DueloView()
            .previewDevice("Apple Watch Series 6 - 40mm")
    }
}
