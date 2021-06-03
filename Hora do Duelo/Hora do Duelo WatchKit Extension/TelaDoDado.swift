//
//  TelaDoDado.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Felipe on 03/06/21.
//

import SwiftUI

struct TelaDoDado: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("Dado3")
                .resizable()
                .frame(width: 87, height: 80)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Girar!")
            }.frame(width: 160, height: 33)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3647058824, green: 0.06666666667, blue: 0.9019607843, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: UnitPoint(x: 0, y: 0.33), endPoint: UnitPoint(x: 0, y: 0.33)))
            .cornerRadius(50)
        }
    }
}

struct TelaDoDado_Previews: PreviewProvider {
    static var previews: some View {
        TelaDoDado()
    }
}
