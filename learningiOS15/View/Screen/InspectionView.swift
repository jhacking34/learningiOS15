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
                    HStack{
                        TextField("Name", text: $vm.name)
                        Text(vm.valName)
                    }
                    HStack
                    {
                        TextField("Unit #", text: $vm.unitNumber)
                        TextField("Make", text: $vm.make)
                        TextField("Model", text: $vm.model)
                    }
                    Button {
                        vm.addUnit()
                    } label: {
                        Image(systemName: "cart.badge.plus")
                        Text("Search")
                    }
                    .font(.title2)
                    .symbolRenderingMode(.multicolor)
                    .buttonStyle(.borderedProminent)
                }
                .textFieldStyle(.roundedBorder)
                
            }
            .padding(.horizontal)
            VStack{
                List(vm.items, id: \.id){ item in
                    HStack{
                        Text(item.make)
                        Text(item.model)
                        Text("Unit number : \(item.unitNumber)")
                        Text("This is the owner of the truck \(item.name)")
                    }
                    .foregroundColor(Color.green)
                }
                .listStyle(.grouped)
                .onAppear{
                    vm.fetch()
                }
            }
        }
        
    }
}

struct InspectionView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionView()
            .preferredColorScheme(.dark)
    }
}
