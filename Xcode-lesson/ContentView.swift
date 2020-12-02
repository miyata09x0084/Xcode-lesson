//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .trailing) {
                Text("知性の自転車")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Bicycle for the Mind")
                    .italic()
                    .offset(x: -10, y:0)
            }
            .padding(.top, 80)
            VStack(alignment: .trailing) {
                Text("憐みは恋の始まり")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text("Pity is akin to love")
                    .italic()
                    .offset(x: -10, y:0)
            }
            .padding(.top, 80)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
