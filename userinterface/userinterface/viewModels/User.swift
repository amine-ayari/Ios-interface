//
//  User.swift
//  userinterface
//
//  Created by ayari on 22/11/2023.
//

import Foundation
class UserViewModel: ObservableObject {
  	
    private let apiManager = APIManager()
   
    func registerUser(first_name: String, email: String, password: String, phone: String ,last_name:String,adresse:String , role:String ,wallet:String) {
        let newUser = UserRegistration(first_name:first_name, last_name:last_name, email: email, password: password, phone: phone,adresse: adresse, role : role , wallet: wallet )
        apiManager.registerUser(user: newUser)
    }
    
        
       
    
}
