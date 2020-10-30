//
//  TestView.swift
//  Contacts-SwiftUI
//
//  Created by Василий Петухов on 30.10.2020.
//

import SwiftUI

struct TestView: View {
    
    
    @State var arr1: [String] = ["one", "two", "three"]
    @State var arr2: [String] = ["four", "five", "six"]

var body: some View {
    List {
                    ForEach(arr1, id: \.self) { s in
                        Section(header: Text("first section")) {
                            Text(s)
                    }
            }
            Section(header: Text("second section")) {
                    ForEach(arr2, id: \.self) { s in
                            Text(s)
                    }
            }
    }
}
    
    
    
//    let europeanCars = ["Audi","Renault","Ferrari"]
//    let asianCars = ["Honda","Nissan","Suzuki"]
//
//    var body: some View {
//        NavigationView {
//            List {
//                // 2.
//                Section(header:
//                            Text("European Cars")) {
//                    ForEach(0 ..< europeanCars.count) {
//                        Text(self.europeanCars[$0])
//                    }
//                }
//                // 3.
//                Section(header:
//                            HStack {
//                                Image(systemName: "car")
//                                Text("Asian Cars")
//                            }
//                        // 4.
//                        , footer: Text("This is a example list of a few car brands").font(.footnote))  {
//                    ForEach(0 ..< asianCars.count) {
//                        Text(self.asianCars[$0])
//                    }
//                }
//
//            } .navigationBarTitle("Cars")
//        }
//
//    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
