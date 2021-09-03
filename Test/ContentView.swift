//
//  ContentView.swift
//  Test
//
//  Created by leon on 2021/6/3.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var hideNavBar = false
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    NavigationLink("Test Padding", destination: TestPaddingView())
                    
                    NavigationLink("Test TabView", destination: TestTabView())
                    
                    NavigationLink("OpenUrlAction", destination: OpenUrlActionView())
                    
                    NavigationLink("Apple logo", destination: AppleLogoView())
                    
                    NavigationLink("Combine Basic", destination: CombineBasicView())
                    
                    NavigationLink("Bar view", destination: BarView())
                        
                }.listStyle(GroupedListStyle())
                .navigationTitle("Test Swift")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    leading: Button(action: {}){Image(systemName: "applelogo")}.accentColor(.green),
                    trailing: Button(action: {}){Image(systemName: "applelogo")}.accentColor(.pink)
                )
                
                Toggle("Navigstor title", isOn: $hideNavBar)
                    .padding()
                LZNoteView("Demo of navigation functions.")
            }//.edgesIgnoringSafeArea(.all)
            .navigationBarHidden(hideNavBar)
        }
    }

   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
