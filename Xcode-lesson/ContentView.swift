//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Flower()
            Hello()
                .font(.system(size: 40))
                .padding()
            Flower()
        }
        .frame(height: 100)
        .padding()
    }
}


struct Hello: View {
    var body: some View {
        Text("Hello")
            .font(.largeTitle)
            .fontWeight(.thin)
            .foregroundColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
    }
}

struct Flower: View {
    var body: some View {
        Image("39424954871_e3afef0013_o")
          .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
