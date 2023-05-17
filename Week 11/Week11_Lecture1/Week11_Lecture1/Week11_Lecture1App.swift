//
//  Week11_Lecture1App.swift
//  Week11_Lecture1
//
//  Created by Emine Sinem on 17.05.2023.
//

import SwiftUI

@main
struct Week11_Lecture1App: App {
    //let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            //ContentView()
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
            ExampleSwiftUIView()
        }
    }
}
