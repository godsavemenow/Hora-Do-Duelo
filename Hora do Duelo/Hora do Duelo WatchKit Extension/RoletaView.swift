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
        VStack{
        Image("roleta")
        .resizable()
            .frame(width: 117, height: 117)
        .rotationEffect(Angle.degrees(10*scrollAmount))
        .animation(.easeOut)
        .focusable(true)
        .digitalCrownRotation($scrollAmount)
        //Button("Rotate") {
             //   self.isRotated.toggle()
            //}
        }
    }
}

struct RoletaView_Previews: PreviewProvider {
    static var previews: some View {
        RoletaView()
            .previewDevice("Apple Watch Series 6 - 40mm")
    }
}
