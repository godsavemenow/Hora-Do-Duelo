//
//  HomeView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Felipe on 31/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("Logomarca")
                .resizable()
                .frame(width: 153, height: 59)
                .scaledToFit()
            
            Spacer()
            
            BotaoMestre(texto: "Sua vez!", proximaView: ModeSelectionView())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
