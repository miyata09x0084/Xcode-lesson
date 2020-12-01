//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("春はあけぼの")
            Text("夏は夜")
                .foregroundColor(.red)
            Text("秋は夕暮れ")
            Text("冬はつとめて")
        }
        .frame(width: 250.0, height: 300.0)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .font(.system(size: 40))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
