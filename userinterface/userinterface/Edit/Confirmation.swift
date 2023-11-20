//
//  Confirmation.swift
//  userinterface
//
//  Created by Mac Mini 6 on 19/11/2023.
//

import SwiftUI

struct Confirmation: View {
    var body: some View {
        @State var phone = ""
        @State  var navigationLinkActive: Bool = false
        NavigationView{
            ZStack{
                Image("bgapp")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .opacity(0.1)
                VStack{
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .position(x:200,y: 40)
                        .padding(.top,50)
                 
                        
                    TextField("Enter your phone numer", text: $phone)
                        .font(.title3)
                        .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                        .frame(width: 343, height: 51)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(12)
                        .foregroundColor(Color("textcolor"))
                        .position(x:200,y: 150)
                    
                    Text("Or")
                        .bold()
                        .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                       
                       
                        .foregroundColor(Color("textcolor"))
                        .position(x:200,y: 70)
                        
                    
                    TextField("Enter your email", text: $phone)
                        .font(.title3)
                        .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                        .frame(width: 343, height: 51)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(12)
                        .foregroundColor(Color("textcolor"))
                        .position(x:200,y: -10)
                        
                    NavigationLink(destination: updated()) {
                        Text("Confirm")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 300)
                            .padding()
                            .background(Color("background"))
                            .cornerRadius(20)
                            .padding(.horizontal)
                            .position(x:210,y: -10)
                    }
                    

                    
                    
                }
            }
        }.navigationBarBackButtonHidden(true)

    }
}

#Preview {
    Confirmation()
}
