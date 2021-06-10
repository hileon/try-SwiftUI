//
//  TestView.swift
//  Test
//
//  Created by leon on 2021/6/3.
//

import SwiftUI

struct TestTabView: View {
    var body: some View {
        TabView {
            VStack{
                HStack{
                    Image(systemName: "applelogo")
                    Text("the 1st tab").font(.headline)
                }
                LZNoteView("When using SwiftUI, you can individually animate changes to views, or to a view’s state, no matter where the effects are. SwiftUI handles all the complexity of these combined, overlapping, and interruptible animations for you.")
            }
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            
            HStack{
                Image(systemName: "appletv.fill")
                Text("the 2nd tab").font(.headline)
            }
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            
            HStack{
                Image(systemName: "applewatch")
                Text("the 3rd tab").font(.headline)
            }
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }.navigationTitle("Test TabView")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestTabView()
    }
}
