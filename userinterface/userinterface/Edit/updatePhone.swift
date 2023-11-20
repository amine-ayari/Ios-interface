//
//  updatePhone.swift
//  userinterface
//
//  Created by Mac Mini 6 on 19/11/2023.
//

import SwiftUI

struct updatePhone: View {
    var body: some View {
        @State var phone = ""
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
                        .padding(.top, 50)
                    
                    TextField("Enter your phone numer", text: $phone)
                        .font(.title3)
                        .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                        .frame(width: 343, height: 51)
                        .background(Color.gray.opacity(0.05))
                        .cornerRadius(12)
                        .foregroundColor(Color("textcolor"))
                        .padding(.top, 100)
                    
                    
                    NavigationLink(destination: Confirmation()) {
                        Text("Update ")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: 120)
                            .padding()
                            .background(Color("background"))
                            .cornerRadius(20)
                            .padding(.top,50)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)

    }
}

#Preview {
    updatePhone()
}
