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
                    NavigationLink("TestView", destination: TestView())
                    
                    NavigationLink("OpenUrlAction", destination: OpenUrlActionView())
                        
                }.listStyle(GroupedListStyle())
                .navigationTitle("Test Swift")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    leading: Button(action: {}){Image(systemName: "applelogo")}.accentColor(.green),
                    trailing: Button(action: {}){Image(systemName: "applelogo")}.accentColor(.pink)
                )
                
                Toggle("Navigstor title", isOn: $hideNavBar)
                    .padding()
                Text("Select a Note")
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
