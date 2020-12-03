//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    let shikoku = ["徳島", "香川","愛媛", "高知" ]
    let kyusyu = ["福岡", "佐賀","長崎", "熊本" ]
    
    var body: some View {
        List {
            Section(header: Text("四国")
                        .font(.largeTitle).padding(.top),
                    footer: Text("最高標高は石山の1,982m")) {
                ForEach( 0..<shikoku.count) { index in
                    Text(self.shikoku[index])
                }
            }
            Section(header: Text("九州")
                        .font(.largeTitle).padding(.top),
                    footer: Text("最高標高は富野裏山の1,936m")) {
                ForEach( 0..<kyusyu.count) { index in
                    Text(self.kyusyu[index])
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
