//
//  updated.swift
//  userinterface
//
//  Created by Mac Mini 6 on 19/11/2023.
//

import SwiftUI

struct updated: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("bgapp")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .opacity(0.1)
                
                
                
                NavigationLink(destination: Details()) {
                    Text("Home")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth:250)
                        .padding()
                        .background(Color("background"))
                        .cornerRadius(20)
                        .padding(.horizontal)
                }
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    updated()
}
