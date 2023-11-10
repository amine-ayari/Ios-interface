//
//  ContentView.swift
//  userinterface
//
//  Created by Mac Mini 5 on 7/11/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State  private var wrongpassword = ""
    @State  private var navigateToLocation = ""
    @State private var ischecked = false
    @FocusState private var isKeyboardshowing:Bool
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                Text("Login")
                    .font(.title)
                    .fontWeight(.bold)
                 
             
                TextField("write you username",text:$email)
                
                    .font(.title3)
                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                    .frame(width: 343,height: 51)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(12)
                    .padding()
                    .focused($isKeyboardshowing)

     
                
                SecureField("write your Password",text: $password)
                    .font(.title3)
                    .padding(EdgeInsets(top:16,leading:32,bottom: 16,trailing: 32))
                    .frame(width: 343,height: 51)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(12)
                    .padding()
                    .focused($isKeyboardshowing)
                
                
                    .onTapGesture {
                        isKeyboardshowing.toggle()
                    }
                    .padding(.bottom,20)
                    .padding(.top ,10)
                    
              
                
                Toggle(isOn: $ischecked ){
                    Text("Remeber me ")
                        .labelsHidden()
                        
                }
                
                
                NavigationLink(destination: Signin()){
                    Text("Don't have an account ")
                }
                .font(Font.custom("Inter", size: 15).weight(.black))
                .foregroundColor(Color("textcolor"))
                    .padding((EdgeInsets(top:16,leading: 32,bottom: 16,trailing: 30)))
                    .background(Color.white)
                    .cornerRadius(12)
                
                
                
                NavigationLink( destination: ForgetPassword()){
                    Text("Forget your password ?")
                }
                .font(Font.custom("Inter", size: 15).weight(.black))
                .foregroundColor(Color("textcolor"))
                    .padding((EdgeInsets(top:16,leading: 32,bottom: 16,trailing: 30)))
                    .background(Color("background"))
                    .cornerRadius(12)
                
            
                
              
                
                
                
                
            }
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
    
}
