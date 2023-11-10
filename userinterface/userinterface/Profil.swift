//
//  Profil.swift
//  userinterface
//
//  Created by Mac Mini 10 on 9/11/2023.
//

import SwiftUI

struct Profil: View {
    var body: some View {
        Form{
            Group{
                HStack{
    
                    VStack{
                       
                    }
                }
            }
            Section(header: Text("basic Information")){
                Text ("First name")
                Text (" last name")
                Text ("Email")
                Text ("password")
                
            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
    

#Preview {
    Profil()
}
