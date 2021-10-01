//
//  Desc.swift
//  learningiOS15
//
//  Created by Johnny Hacking on 10/1/21.
//

import SwiftUI

struct Desc: View {
    var description : String
    
    var body: some View {
        Text(description)
            .frame(maxWidth: .infinity)
            .padding()
            .font(.title2)
            .foregroundColor(Color.white)
            .background(Color.orange)
    }
}

struct Desc_Previews: PreviewProvider {
    static var previews: some View {
        Desc(description: "This is the description that I am working on ...")
    }
}
