//
//  RawView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/03.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    let w:CGFloat = UIScreen.main.bounds.width - 100
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: w, height: w)
                .clipped()
            Text(photo.title).padding()
        }
        .padding()
        .background(Color(red: 0.9, green: 0.9, blue: 0.7))
        .cornerRadius(8)
    }
}

struct RawView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[0])
    }
}
