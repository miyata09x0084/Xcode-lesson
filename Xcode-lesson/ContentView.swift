//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var seletedColor = 0
    let colorViews = [Color.red, Color.green, Color.blue]
    
    var body: some View {
        VStack {
            Picker(selection: $seletedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            symbolImage(num: seletedColor)
                .resizable()
                .foregroundColor(colorViews[seletedColor])
                .frame(width: 100, height: 100)
                .padding()
                
        }
        
        
        
    }
    
    func symbolImage(num:Int) -> Image {
        switch num {
        case 0:
            return Image(systemName: "r.circle")
        case 1:
            return Image(systemName: "g.circle")
        case 2:
            return Image(systemName: "b.circle")
        default :
            return Image(systemName: "r.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
