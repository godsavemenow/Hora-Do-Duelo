//
//  ContatosView.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Felipe on 31/05/21.
//

import SwiftUI

public struct BotãoDeContatos: View {
    @State public var nome: String
    @State public var emoji: String
    
    public var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Text(nome)
                Spacer()
                Text(emoji)
            }
        }.frame(width: 160, height: 33)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .padding(.horizontal)
        .padding(.bottom)
    }
    
}

public struct BotãoDeContatoNovo: View {
    @State public var nome: String
    
    public var body: some View {
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            HStack {
                Text(nome)
                Spacer()
            }
        }.frame(width: 160, height: 33)
        .background(Color(#colorLiteral(red: 0.1411764706, green: 0.1411764706, blue: 0.1411764706, alpha: 1)))
        .cornerRadius(40)
        .padding(.horizontal)
        .padding(.bottom)
    }
    
}

struct ContatosView: View {
    var body: some View {
        ScrollView {
            VStack {                
                NavigationLink(destination: TelaDoJoKenPo()){
                    HStack {
                        Text("Lucas")
                        Spacer()
                        Text("")
                    }
                }.frame(width: 160, height: 33)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal)
                .padding(.bottom)
                
                NavigationLink(destination: TelaDoJoKenPo()){
                    HStack {
                        Text("Eduardo")
                        Spacer()
                        Text("")
                    }
                }.frame(width: 160, height: 33)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal)
                .padding(.bottom)
                
                NavigationLink(destination: TelaDoJoKenPo()){
                    HStack {
                        Text("Alexandra")
                        Spacer()
                        Text("")
                    }
                }.frame(width: 160, height: 33)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal)
                .padding(.bottom)
                
                NavigationLink(destination: TelaDoJoKenPo()){
                    HStack {
                        Text("Felipe")
                        Spacer()
                        Text("")
                    }
                }.frame(width: 160, height: 33)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.03921568627, green: 0.5176470588, blue: 1, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

struct ContatosView_Previews: PreviewProvider {
    static var previews: some View {
        ContatosView()
    }
}
