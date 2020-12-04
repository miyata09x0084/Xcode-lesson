//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var selectedSize = 0
    @State var selectedColor = 0
    let sizes = ["XS","S","M","L","LL",]
    let colors = ["Red","Green","Blue","Yellow","Pink","White"]
    
    var body: some View {
        VStack {
            HStack {
                Picker(selection: $selectedSize, label: Text("")) {
                    ForEach(0..<sizes.count) { index in Text(self.sizes[index]).tag(index)
                    }
                }
                .frame(width: 200)
                
                Picker(selection: $selectedColor, label: Text("")) {
                    ForEach(0..<colors.count) { index in Text(self.colors[index]).tag(index)
                    }
                }
                .frame(width: 200)
                .onAppear(perform: {
                    self.selectedColor = self.colors.count/2
                })
            }
            
            HStack {
                Text("size: \(sizes[selectedSize])")
                    .padding(.horizontal, 40)
                Text("size: \(colors[selectedColor])")
                    .padding(.horizontal, 30)
                }
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 40)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
