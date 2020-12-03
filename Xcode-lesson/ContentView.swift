//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(photoArray) { item in
                NavigationLink(destination: PhotoDetailView(photo: item)) {
                        PhotoRaw(photo: item)
                    }
            }
            .navigationBarTitle(Text("写真リスト"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
