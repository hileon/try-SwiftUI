//
//  TempView.swift
//  Test
//
//  Created by leon on 2021/6/10.
//

import SwiftUI

struct TempView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 30
        ) {
            ForEach(
                1...100,
                id: \.self
            ) {
                Text("Item Item Item \($0)")
            }
        }.frame(width: .infinity)
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
