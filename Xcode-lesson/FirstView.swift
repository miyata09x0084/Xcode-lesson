//
//  FirstView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/08.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Text("Hello, FirstView!")
                .font(.title)
            Image(systemName: "1.circle.fill")
                .scaleEffect(x: 3, y: 3)
                .padding(40)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
