//
//  ContentView.swift
//  emojilover
//
//  Created by Mohammad Hasham Ahmed on 12/03/2024.
//
 
import SwiftUI
 
enum emoji:String, CaseIterable {
    case 😂,😈,🫡,🇵🇰
}

struct ContentView: View {
    @State var selection: emoji = .😂
    
    
    var body: some View {
        Text(selection.rawValue)
            .font(.system(size: 150))
        Picker("select emoji", selection: $selection) {
            ForEach(emoji.allCases, id: \.self){
                emoji in Text(emoji.rawValue)
            }
        }
    }
}
#Preview {
    ContentView()
}

