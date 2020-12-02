//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("39424954871_e3afef0013_o")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .offset(x: -70, y: 0)
                .frame(width: 250, height: 400)
                .clipped()
            Text("ほととぎす\n鳴きつるほうをながむれば\nただ有明の月ぞ残れる\n")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .padding()
                .offset(x: 0, y: -5)
                .frame(width: 250, height: 400)
                }
        .rotation3DEffect(
            .degrees(45), axis: (x: 1, y: 0, z: 0)
            )
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
