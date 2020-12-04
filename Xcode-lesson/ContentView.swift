//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    let tax = 0.1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("5個づつ30個まで、1個\(self.tanka)円")
                .font(.headline)
            Stepper(
                onIncrement: {
                    self.kosu += 5
                    self.kosu = min(self.kosu, 30)
                },
                onDecrement: {
                    self.kosu -= 5
                    self.kosu = max(self.kosu, 0)
                },
                label: {Text("個数: \(self.kosu)")}
            ).frame(width: 200)
            
                Text("料金: \(calc(self.kosu)) 円[税込]")
                    .underline()
            
            }
        }
        
    func calc(_ num:Int) -> Int {
        let price = self.tanka * num
        let result = Double(price) * (1 + self.tax)
        return Int(result)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
