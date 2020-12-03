//
//  RawView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/03.
//

import SwiftUI

struct PhotoRaw: View {
    var photo:PhotoData
    
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
            Spacer()
        }
    }
}

struct RawView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRaw(photo: photoArray[0])
            .previewLayout(.fixed(width: 300, height: 80))
    }
}
