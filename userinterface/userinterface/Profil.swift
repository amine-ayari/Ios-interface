//
//  Profil.swift
//  userinterface
//
//  Created by Mac Mini 10 on 9/11/2023.
//

import SwiftUI

struct Profil: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var location = ""
    @State private var Role = false
    @State private var age = 20
    var body: some View {
            NavigationView {
                       Form {
                           TextField("Firstname",
                                                text: $firstname)
                                      TextField("Lastname",
                                                text: $lastname)
                           Picker(selection: $location,
                                  label: Text("Location")) {
                                   ForEach(Location.allLocations, id: \.self) { location in
                                       Text(location).tag(location)
                                   }
                           }
                           Toggle(isOn: $Role,
                                  label: {
                                      Text("Accept terms and conditions")
                           })
                           Stepper(value: $age,
                                   in: 18...100,
                                   label: {
                               Text("Current age: \(self.age)")
                           })
                           
                           Button(action: {
                               print("Updated profile")
                           }, label: {
                               Text("Update Profile")
                           })
                           
                       }.navigationBarTitle(Text("Profile"))
                   }
        }
    }
struct Location {

    static let allLocations = [
        "Ariana",
        "Ben arous ",
        "Marsa",
        "L'aouina",
        " El kram"
    ]
    
}
        
#Preview {
    Profil()
    
}

    
