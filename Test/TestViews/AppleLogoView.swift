//
//  AppleLogoView.swift
//  Test
//
//  Created by leon on 2021/6/21.
//

import SwiftUI

struct AppleLogoView: View {
    var body: some View {
        VStack(spacing:0){
            Color.green
            Color.green
            Color.green
            Color.yellow
            Color.orange
            Color.red
            Color.purple
            Color.blue
        }
        .frame(width: 120, height: 120)
        .mask(
            Image(systemName: "applelogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        )
    }
}

struct AppleLogoView_Previews: PreviewProvider {
    static var previews: some View {
        AppleLogoView()
    }
}
