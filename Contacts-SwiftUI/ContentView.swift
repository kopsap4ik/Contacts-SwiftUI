//
//  ContentView.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 30.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    let persons = PersonsManager().generatePersons()
    
    var body: some View {
        TabView {
            NamesList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Имена")
                }
            DetailedList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Подробно")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
