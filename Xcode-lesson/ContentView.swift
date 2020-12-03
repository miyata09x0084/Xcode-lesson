//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                self.num = Int.random(in: 0...100)
                print(num)
            }) {
                Text("Random Button")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 280.0, height: 60.0)
                    .background(Color.blue)
                    .cornerRadius(15, antialiased: true)
                
            }
            Text("\(num)")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
