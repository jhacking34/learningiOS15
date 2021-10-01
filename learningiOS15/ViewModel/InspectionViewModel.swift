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
}
