//
//  login.swift
//  userinterface
//
//  Created by ayari on 22/11/2023.
//

import Foundation
import SwiftUI
import Combine

class loginViewModel: ObservableObject {
   
  private let apiManager = APIManager()
    func login(email: String, password: String, completion: @escaping (Result<UserRegistration, Error>) -> Void) {
        apiManager.login(eamil: email , password: password) { result in
                switch result {
                    case .success(let user):
                        // Handle successful login
                        completion(.success(user))
                    case .failure(let error):
                        // Handle login error
                        completion(.failure(error))
                }
            }
        }

        func logout() {
            SessionManager.shared.logout()
        }
}
