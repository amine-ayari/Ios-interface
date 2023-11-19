//
//  ForgetPassword.swift
//  userinterface
//
//  Created by Mac Mini 5 on 8/11/2023.
//

import SwiftUI

struct ForgetPassword: View {
    @State var email = ""
    @State var username = ""
    @State  private var navigateToLocation = ""
  
    var body: some View {
        
        NavigationView {
            VStack{
                Image("login")
                    .resizable()
                    .scaledToFit()
                Text("Forget Password")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                TextField("write you username or email ",text:$email)
                    .font(.title3)
                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                    .frame(width: 343,height: 51)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(12)
                    .padding(270)
              
                
                
               
                
                NavigationLink(destination: OtpValidation()){
                    Text("Reset password ")
                }
                .font(Font.custom("Inter", size: 15).weight(.black))
                .foregroundColor(Color.green)
                .padding((EdgeInsets(top:16,leading: 32,bottom: 16,trailing: 30)))
                .background(Color.white)
                .cornerRadius(12)
              
                
                               
                               
            }
        }
    }
    
    struct ForgetPassword_Previews: PreviewProvider {
        static var previews: some View {
            ForgetPassword()
        }
    }
}
