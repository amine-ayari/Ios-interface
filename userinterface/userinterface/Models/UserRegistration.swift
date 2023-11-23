//
//  UserRegistration.swift
//  userinterface
//
//  Created by ayari on 22/11/2023.
//

import Foundation
import SwiftUI
import CoreData
struct UserRegistration: Decodable ,Encodable{
    var first_name: String
    var last_name: String
    var email: String
    var password: String
    var phone: String
    var adresse: String
    var role:String
    var wallet :String

 
}

struct RegistrationError: Identifiable {
    let id = UUID()
    let message: String
}
