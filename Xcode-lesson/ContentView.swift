//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollView{
            VStack{
                ForEach(photoArray) { photoData in
                    PhotoView(photo: photoData)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
