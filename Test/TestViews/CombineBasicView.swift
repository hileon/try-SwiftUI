//
//  CombineBasicView.swift
//  Test
//
//  Created by leon on 2021/6/11.
//

import SwiftUI
import Combine

struct CombineBasicView: View {
    @State var msg = ""
    @ObservedObject var nsc = NSC()
    
    var body: some View {
        VStack(spacing: 20){
            Button("Send Message", action: {
                nsc.postTestMsg()
                print("a message was sent")
            })
            
            Text(nsc.message)
            
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
