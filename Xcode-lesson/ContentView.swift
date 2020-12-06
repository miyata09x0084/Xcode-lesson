//
//  ContentView.swift
//  Xcode-lesson
//
//  Created by 宮田亮 on 2020/12/01.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    @Environment(\.locale) var locale:Locale
    
    var dateformate: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }

    var body: some View {
        Form {
            Text(dateformate.string(from: theDate)).font(.headline)
            DatePicker(selection: $theDate,
                       displayedComponents: .date,
                       label: { Text("日時") })
                .environment(\.locale, Locale(identifier: "ja_JP"))
            DatePicker(selection: $theDate,
                       displayedComponents: .hourAndMinute,
                       label: { Text("日時") })
                .environment(\.locale, Locale(identifier: "ja_JP"))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
