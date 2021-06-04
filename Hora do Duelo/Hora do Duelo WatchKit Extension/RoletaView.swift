//
//  RoletaView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Alexandra Zarzar on 03/06/21.
//

import SwiftUI

struct RoletaView: View {
    @State private var isRotated = false
    @State var scrollAmount = 0.0
    
    var body: some View {
        ZStack{
        Image("roleta")
        .resizable()
            .frame(width: 140, height: 141)
        .rotationEffect(Angle.degrees(20*scrollAmount))
        .animation(.easeOut)
        .focusable(true)
        .digitalCrownRotation($scrollAmount)
            
        Image("seta")
        .resizable()
            .frame(width: 28, height: 35)

        }
    }
}

struct RoletaView_Previews: PreviewProvider {
    static var previews: some View {
        RoletaView()
            .previewDevice("Apple Watch Series 6 - 40mm")
    }
}
