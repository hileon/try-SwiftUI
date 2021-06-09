//
//  OpenUrlActionView.swift
//  Test
//
//  Created by leon on 2021/6/9.
//

import SwiftUI

struct OpenUrlActionView: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        ScrollView{
            VStack{
                Button(action: contactSupport) {
                    Text("Email Support")
                    Image(systemName: "envelope.open")
                }
                
                Text("Title")
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Text("Title")
                    .border(Color.gray)
                    .frame(width: 100, height: 50)
                
                Image("avator40")
                    .resizable(resizingMode: .tile)
                    .interpolation(.none)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.blue)
                
                Image("avator40")
                    .resizable()
                    .interpolation(.none)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.blue)
                Image("avator40")
                    .resizable()
                    .interpolation(.low)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.red)
                Image("avator40")
                    .resizable()
                    .interpolation(.medium)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.red)
                Image("avator40")
                    .resizable()
                    .interpolation(.high)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.red)
                
                Image("avator200")
                    .resizable()
                    .interpolation(.high)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                    .border(Color.green)
            }.frame(maxWidth: .infinity)
        }.navigationTitle("OpenUrlAction")
        .navigationBarTitleDisplayMode(.inline)
    }

    func contactSupport() {
        guard let url = URL(string: "https://www.example.com") else {
            return
        }
        openURL(url)
    }
}

struct OpenUrlActionView_Previews: PreviewProvider {
    static var previews: some View {
        OpenUrlActionView()
    }
}
