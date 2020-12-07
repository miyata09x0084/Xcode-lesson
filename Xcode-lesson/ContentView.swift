//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false

    var body: some View {
        Button(action: {
            self.isSheet = true
        }) {
            Text("削除")
        .foregroundColor(.white)
        .background(Capsule()
                        .foregroundColor(.red)
                        .frame(width: 100, height: 30))
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(
                title: Text("削除しますか"),
                buttons: [
                    .destructive(Text("削除"), action: {}),
                    .cancel(Text("キャンセル"), action: {})
                ])
        }
    }
}

func deleteProcess() {
    print("削除しました")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
