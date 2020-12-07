//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false

    var body: some View {
        Button(action: {
                self.isError = true
        }) {
        Text("Alertテスト")
        }.alert(isPresented: $isError, content: {
        Alert(
            title: Text("タイトル"),
            message:Text("メッセージ文"),
            primaryButton: .destructive(Text("削除する"),action:{}),
            secondaryButton:
                .cancel(Text("キャンセル"), action: {}))
        })
    }
}


func okAction() {
    print("OKボタンが選ばれた")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
