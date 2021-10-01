//
//  Header.swift
//  learningiOS15
//
//  Created by Johnny Hacking on 10/1/21.
//

import SwiftUI

struct Header: View {
    var title : String
    var subTitle : String
    var desTxt : String
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
                .font(.largeTitle)
            
            Text(subTitle)
                .font(.title)
                .foregroundColor(Color.blue)
            Desc(description: desTxt)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "Title", subTitle: "Subtitle", desTxt: "This is something about the subject I am learning")
    }
}
