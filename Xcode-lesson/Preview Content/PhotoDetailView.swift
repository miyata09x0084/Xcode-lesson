//
//  PhotoDetailView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/03.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
            Text(photo.title)
            Spacer()
        }
        .padding()
        
        .navigationBarTitle(Text(verbatim: photo.title), displayMode: .inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo:photoArray[0])
    }
}
