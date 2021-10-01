//
//  InspectionViewModel.swift
//  learningiOS15
//
//  Created by Johnny Hacking on 10/1/21.
//

import Foundation
class InspectionVM: ObservableObject {
    @Published  var name = ""
    @Published  var unitNumber = ""
    @Published  var make = ""
    @Published  var model = ""
    @Published var items: [Unit] = []
    
    func fetch(){
        items = [Unit(name: "Johnny's Ford", unitNumber: "B-123", make: "Ford", model: "F-150")]
    }
}
