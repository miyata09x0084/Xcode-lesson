//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView: View {
    @State var kosu:String = ""
    let tanka:Double = 250
    let tax:Double = 1.1

    var body: some View {
        ZStack {
            Color.white
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
           VStack (alignment: .leading) {
                HStack {
                    Text("個数：").padding(.horizontal, 0)
                    TextField("0", text: $kosu)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                }
                
                .font(.title)
                .frame(width: 300)
                
                Group {
                    if kosuCheck(min: 1, max: 10) {
                        Text("\(price())円です。")
                            .font(.title)
                    } else {
                        Text("個数は1〜10個を入れてください。")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                }.frame(width: 400, height: 30)
            }
            .position(x:200, y:200)
        }
    }
    
    func kosuCheck(min:Int, max:Int) -> Bool {
        guard let num = Int(kosu) else {
            return false
        }
        return (min...max).contains(num)
    }
    
    func price() -> Int {
        if let num = Double(kosu) {
            let result = Int(tanka * num * tax)
            return result
        } else {
            return -1
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
