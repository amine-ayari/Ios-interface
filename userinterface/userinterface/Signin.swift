//
//  SignUp.swift
//  userinterface
//
//  Created by Mac Mini 5 on 7/11/2023.
//

import SwiftUI

struct Signin: View {
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var Cpassword = ""

    var body: some View {
        NavigationView{
            ZStack(alignment:.topLeading){
                Color ("Color1").ignoresSafeArea()
                VStack{
                    VStack(spacing:1){
                        ZStack{
                         
                                                                                       
                           
                            Text("Create your account ")
                                .foregroundColor(Color("textcolor"))
                                .font(.system(size:35))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(.trailing)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                .padding(.leading,20)
                                .foregroundColor(Color("textcolor"))
                                .padding(.top)
                            
                            Image("logo")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .padding(.top,100)

                            
                            
                        }
                        VStack(spacing: 1){
                            
                            VStack{
                                TextField("Enter you username",text:$username)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,60)
                                    .foregroundColor(Color("textcolor"))
                                
                                TextField("Enter your Email",text:$email)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    
                                    .foregroundColor(Color("textcolor"))
                                    .padding(.top,10)
                                
                               SecureField("Password",text:$password)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,10)
                                    .foregroundColor(Color("textcolor"))
                                
                                SecureField("confirm your password",text:$Cpassword)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,10)
                                    .foregroundColor(Color("textcolor"))
                                
                                
                                NavigationLink(destination: Profil()){
                                    Text("Sign In")
                        
                                    }
                            
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 290,height: 51)
                                .background(Color("background"))
                                .cornerRadius(12)
                                .padding(.top,20)
                                .foregroundColor(Color("textcolor"))
                                
                                
                                Image("fb")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                    .padding(.horizontal,60)
                                    .padding(.vertical,40)
                                Image("gog")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                 
                                
                                
                                
                                
                                    NavigationLink(destination: ContentView()){
                                        Text("Already have an account?")
                            
                                        }
                                
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 290,height: 51)
                                    .cornerRadius(12)
                                    .padding(.top,20)
                                    .foregroundColor(Color("textcolor"))
                                
                                        
                                }
                                                                
                             
                                }
                                
                                
                            }
                        }
                    }
                    

                }
            }
        }
    


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        Signin()
    }
}

