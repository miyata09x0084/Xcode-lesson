//
//  SecoundView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/08.
//

import SwiftUI

struct SecoundView: View {
    var body: some View {
        VStack {
            Text("Hello, SecoundView!")
                .font(.title)
            Image(systemName: "2.circle.fill")
                .scaleEffect(x: 3, y: 3)
                .padding(40)
        }
    }
}

struct SecoundView_Previews: PreviewProvider {
    static var previews: some View {
        SecoundView()
    }
}
