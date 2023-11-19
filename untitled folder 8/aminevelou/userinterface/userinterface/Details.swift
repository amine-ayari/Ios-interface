//
//  Details.swift
//  userinterface
//
//  Created by iMac on 14/11/2023.
//

import SwiftUI

struct Details: View {
    @State var email = ""
    @State var oldpassword = ""
    @State var Newpassword = ""
    @State var username = ""
    @State var cpassword = ""
    var body: some View {
        NavigationView{
            ZStack(alignment:.topLeading){
                Color ("Color1").ignoresSafeArea()
                VStack{
                    VStack(spacing:1){
                        ZStack{
                            
                            
                            
                            Text("Update your Profile ")
                                .foregroundColor(Color("textcolor"))
                                .font(.system(size:35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
                                .frame(maxWidth: .infinity,alignment: .leading)
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
                                TextField("Username",text:$username)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,60)
                                    .foregroundColor(Color("textcolor"))
                      
                                SecureField("Old Password",text:$oldpassword)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,10)
                                    .foregroundColor(Color("textcolor"))
                                
                                SecureField(" new password",text:$cpassword)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,10)
                                    .foregroundColor(Color("textcolor"))
                                
                                SecureField("confirm your password",text:$cpassword)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343,height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top,10)
                                    .foregroundColor(Color("textcolor"))
                                
                                
                                
                                NavigationLink(destination: ProfileView()){
                                    Text("Update")
                                    
                                }
                                
                                
                              
                                
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 290,height: 51)
                                .background(Color("background"))
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

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
    }
}
