//
//  TestPaddingView.swift
//  Test
//
//  Created by leon on 2021/6/10.
//

import SwiftUI

struct TestPaddingView: View {
    var body: some View {
        VStack{
            
            Group{
                LZNoteView("Padding test.")
                
                Divider()
                
                Text(".padding()")
                    .background(Color.green)
                    .padding()
                    .border(Color.blue)
                
                Text(".padding(.leading)")
                    .background(Color.green)
                    .padding(.leading)
                    .border(Color.blue)
                
                Text(".padding(.bottom, 20)")
                    .background(Color.green)
                    .padding(.bottom, 20)
                    .border(Color.blue)
                
                Text(".padding([.leading, .trailing, .bottom])")
                    .background(Color.green)
                    .padding([.leading, .trailing, .bottom])
                    .border(Color.blue)
                
                Text(".padding(EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 20))")
                    .background(Color.green)
                    .padding(EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 20))
                    .border(Color.blue)
            }
            
            Group{
                LZNoteView("Diffrent sequence of modifiers result into different results.")
                
                Text("Title")
                    .frame(width: 100, height: 50)
                    .border(Color.gray)
                
                Text("Title")
                    .border(Color.gray)
                    .frame(width: 100, height: 50)
            }
            
        }.navigationTitle("Test Padding")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TestPaddingView_Previews: PreviewProvider {
    static var previews: some View {
        TestPaddingView()
    }
}
