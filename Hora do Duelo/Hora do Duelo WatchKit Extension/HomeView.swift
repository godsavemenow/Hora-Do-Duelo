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
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Sua vez!")
            }.background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
            .padding(.horizontal)
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
