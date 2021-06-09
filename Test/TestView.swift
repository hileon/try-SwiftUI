//
//  TestView.swift
//  Test
//
//  Created by leon on 2021/6/3.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationView{
            VStack{
                TabView {
                    HStack{
                        Image(systemName: "applelogo")
                        Text("the 1st tab").font(.headline)
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
                }
                .font(.headline)
                Text("ddsdsds")
            }.navigationTitle("leozn")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing ){
                    VStack{
                        HStack{
                            Image(systemName: "applelogo")
                            Text("xsddds").font(.headline)
                        }
                        Text("dkkkkk sdsdds").font(.subheadline)
                    }
                }
            }
        }.navigationTitle("TestView")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
