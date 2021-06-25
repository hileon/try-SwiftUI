//
//  CombineBasicView.swift
//  Test
//
//  Created by leon on 2021/6/11.
//

import SwiftUI
import Combine

struct CombineBasicView: View {
    @State private var msg = ""
    @ObservedObject var nsc = NSC()
    
    var body: some View {
        VStack(spacing: 20){
            TextField(
                "input message to send to notify center",
                 text: $msg
            ).padding()
            Button("Send Message", action: {
                nsc.postTestMsg(message: msg)
                print("a message was sent")
            })
            
            Text(nsc.currentMessage)
            
            Spacer()
        }.onAppear(perform: {
            nsc.subMsg()
        }).padding()
    }
}

struct CombineBasicView_Previews: PreviewProvider {
    static var previews: some View {
        CombineBasicView()
    }
}
