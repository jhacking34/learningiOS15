//
//  InspectionView.swift
//  learningiOS15
//
//  Created by Johnny Hacking on 10/1/21.
//

import SwiftUI

struct InspectionView: View {
    @StateObject private var vm = InspectionVM()
    
    
    var body: some View {
        VStack{
            Header(title: "Inspection", subTitle: "Enter Details", desTxt: "This is going to be a form view to replicate the LVF")
            GroupBox(label: Text("Fill in form")) {
                VStack{
                    TextField("Name", text: $vm.name)
                    HStack
                    {
                        TextField("Unit #", text: $vm.unitNumber)
                        TextField("Make", text: $vm.make)
                        TextField("Model", text: $vm.model)
                    }
                    
                }
                .textFieldStyle(.roundedBorder)
                
            }
            .padding(.horizontal)
        }
        
    }
}

struct InspectionView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionView()
            .preferredColorScheme(.dark)
    }
}