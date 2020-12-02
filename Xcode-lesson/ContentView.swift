//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Image("39424954871_e3afef0013_o")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(1.8)
                .offset(x: -70, y: -30)
                .frame(width: 300, height: 200)
                .clipped()
                .overlay(            Text("Hello World")
                                        .font(.largeTitle)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.center))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
