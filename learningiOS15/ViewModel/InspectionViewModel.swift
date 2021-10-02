//
//  InspectionViewModel.swift
//  learningiOS15
//
//  Created by Johnny Hacking on 10/1/21.
//

import Foundation
class InspectionVM: ObservableObject {
    @Published var name = ""
    @Published var valName = ""
    @Published var unitNumber = ""
    @Published var make = ""
    @Published var model = ""
    @Published var items: [Unit] = []
    
    init(){
        $name
            .map{ $0.isEmpty ? "❌" : "✅"}
            .assign(to: &$valName)
    }
    
    func fetch(){
        items = [Unit(name: "Johnny's Ford", unitNumber: "B-123", make: "Ford", model: "F-150")]
    }
    
    func addUnit(){
        let newUnit = Unit(name: name, unitNumber: unitNumber, make: make, model: model)
        items.append(newUnit)
        resetValues()
    }
    
    func resetValues(){
        name = ""
        unitNumber = ""
        make = ""
        model = ""
    }
}
