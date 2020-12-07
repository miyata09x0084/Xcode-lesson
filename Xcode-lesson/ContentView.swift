//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var isModal:Bool = false
    @State var counter:Int = 0

    var body: some View {
        Button(action: {
            self.isModal = true
        }) {
            Text("Sheetテスト")
        }
        .sheet(isPresented: $isModal, onDismiss:{self.countUp()}) {
            SomeView()
        }
        .disabled(counter >= 3)
        Text("回数:\(counter)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
        
    }
    func countUp() {
        self.counter += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
