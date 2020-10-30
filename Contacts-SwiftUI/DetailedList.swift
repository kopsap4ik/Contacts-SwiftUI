//
//  DetailedList.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 30.10.2020.
//

import SwiftUI

struct DetailedList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            
            List{
                ForEach(persons, id: \.self) { person in
                    Section(header: Text("\(person.firstName) \(person.lastName)")
                                .font(Font.title2.weight(.heavy))
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity, alignment: .center)
                    ){
                        HStack {
                            Image(systemName: "phone")
                            Text("\(person.phone)")
                        }
                        HStack {
                            Image(systemName: "envelope")
                            Text("\(person.email)")
                        }
                    }
                    .foregroundColor(.blue)
                    .font(.title3)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Контакты"))
        }
    }
}

struct FulinfoList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedList(persons: PersonsManager().generatePersons())
    }
}
