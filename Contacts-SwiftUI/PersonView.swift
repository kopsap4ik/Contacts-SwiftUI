//
//  PersonView.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 30.10.2020.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.orange)
            Text("Телефон: \(person.phone)")
            Text("E-mail: \(person.email)")
            Spacer()
        }
        .font(.title2)
        .padding()
        .navigationBarTitle(Text("\(person.firstName) \(person.lastName)"))
    }
}

struct PersonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: PersonsManager().generatePersons().first ?? Person())
    }
}
