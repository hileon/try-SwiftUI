//
//  LZNoteView.swift
//  Test
//
//  Created by leon on 2021/6/10.
//

import SwiftUI

struct LZNoteView: View {
    var note:String
    
    init() {
        self.note = "This default note text."
    }
    
    init(_ note: String) {
        self.note = note
    }
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "note.text")
                Text("Note:")
                Spacer()
            }
                .font(.title)
            .padding(.horizontal)
            .padding(.top)
            
            HStack{
                Text(note)
                    .padding()
                Spacer()
            }
            
        }.frame(width: .infinity)
        .background(Color.blue).opacity(0.9)
        .foregroundColor(.white)
    }
}

struct LZNoteView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            LZNoteView()
            LZNoteView("When using SwiftUI, you can individually animate changes to views, or to a view’s state, no matter where the effects are. SwiftUI handles all the complexity of these combined, overlapping, and interruptible animations for you.")
        }
    }
}
