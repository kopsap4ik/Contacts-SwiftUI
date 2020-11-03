//
//  NamesList.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 30.10.2020.
//

import SwiftUI

struct NamesList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(destination: PersonView(person: person)) {
                    Text(person.fullName)
                        .font(.title2)
                        .padding()
                }
            }
            .navigationBarTitle("Друзья")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        NamesList(persons: PersonsManager().generatePersons())
    }
}
