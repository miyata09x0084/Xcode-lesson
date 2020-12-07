//
//  SomeView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/07.
//

import SwiftUI

struct SomeView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Spacer()
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
            Spacer()
            
            Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Text("OK").font(.title)
            }
            .padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
