//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            FirstView()
                .tabItem {
                    Image("first")
                    Text("First")
                }
                .tag(0)
            SecoundView()
                .tabItem {
                    Image("secound")
                    Text("Secound")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
