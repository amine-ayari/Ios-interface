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
    @State private var darkscreen = false
    @State private var faceid = false
       @State private var navigationLinkActive: Bool = false

    var body: some View {
        NavigationView{
            ZStack(alignment:.topLeading){
                Color ("Color1").ignoresSafeArea()
                VStack{
                    VStack(spacing:1){
                        ZStack{
                            Image("bgapp")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .opacity(0.1)
                            
                            
                            
                            
                           
                            VStack(spacing: 0){
                                
                                HStack{
                                    ProfilView()
                                        .position(x: 220, y: 55)
                                    
                                }
                                HStack{
                                    Text("Update")
                                        
                                        .padding(70)
                                        .offset(x:0, y: -4)
                                        .bold()
                                }
                                
                                HStack{
                                    
                                    Image("email")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x:40 , y: -25)
                                    
                                    NavigationLink(destination: updateEmail()) {
                                        Text("Email")
                                    }
                                    .font(.system(size: 15))
                                    .bold()
                                    .foregroundColor(.black)
                                    .position(x:180, y:-35)
                                   
                                    
                                    
                                    NavigationLink(destination: updateEmail(), isActive: $navigationLinkActive) {
                                        EmptyView()
                                    }
                                    
                                        Image("arrow")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 30)
                                    
                                    .offset(x: 90, y: -65)
                                    
                                    Rectangle()
                                        .foregroundColor(Color("color1"))
                                        .frame(width: 500, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(1)
                                        .position(x:-110, y: -10)
                                    
                                    
                                }
                                HStack{
                                    
                                    Image("profil")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x: 35, y: -30)
                                        .bold()
                                    NavigationLink(destination: updateEmail()) {
                                        Text("user name")
                                    }
                                                                            .font(.system(size: 15))
                                        .foregroundColor(.black)
                                        .position(x:180, y:-35)
                                        .bold()
                               
                        
                                    NavigationLink(destination: updateEmail(), isActive: $navigationLinkActive) {
                                        EmptyView()
                                    }
                                    
                                        Image("arrow")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 30)
                                    
                                    .offset(x: 90, y: -65)
                                    
                                    
                                    Rectangle()
                                        .foregroundColor(Color("color1"))
                                        .frame(width: 500, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(1)
                                        .position(x:-110, y: -10)
                                    
                                    
                                }
                                HStack{
                                    
                                    Image("telephone")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x: 35, y: -20)
                                    NavigationLink(destination: updatePhone()) {
                                        Text("Téléphone")
                                    }
                                   
                                        .font(.system(size: 15))
                                        .foregroundColor(.black)
                                        .position(x:180, y:-13)
                                        .bold()
                                    
                                    NavigationLink(destination: updatePhone(), isActive: $navigationLinkActive) {
                                        EmptyView()
                                    }
                                    Button(action: {
                                        navigationLinkActive = true
                                        
                                    }) {
                                        Image("arrow")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width:20, height: 30)
                                    }
                                    .offset(x: 95, y: -50)
                                    Rectangle()
                                        .foregroundColor(Color("color1"))
                                        .frame(width: 500, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(1)
                                        .position(x:-110, y: 0)
                                    
                                    
                                }
                     
                                
                                Text("Settings")
                                    .font(.system(size: 12))
                                    .foregroundColor(Color("background"))
                                    .fontWeight(.semibold)
                                    .position(x:200, y:-30)
                                
                                
                                HStack{
                                    
                                    Image("lunes")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x: 40, y: -10)
                                    
                                    Toggle("Dark Mode", isOn: $darkscreen)
                                        .foregroundColor(.black)
                                        .padding(.leading, 10)
                                        .position(x:150, y:-20)
                                    
                                    
                                    Rectangle()
                                        .foregroundColor(.clear)
                                    
                                        .frame(width: 400, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(0.2)
                                        .position(x:-70, y: 10)
                                    
                                    
                                }
                                HStack{
                                    
                                    Image("profil")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x: 40, y: 10)
                                    
                                    Toggle("FaceID", isOn: $faceid)
                                        .foregroundColor(.black)
                                        .padding(.leading, 10)
                                        .position(x:150, y:5)
                                    
                                    Rectangle()
                                        .foregroundColor(.clear)
                                    
                                        .frame(width: 400, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(0.2)
                                        .position(x:-70, y: 30)
                                    
                                    
                                }
                                HStack{
                                    
                                    Image("cloche")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                        .position(x: 240, y: 25)
                                    Text("Notification")
                                        .font(.system(size: 15))
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .position(x:40, y:25)
                                    Text("Désactiver")
                                        .font(.system(size: 12))
                                        .fontWeight(.light)
                                        .foregroundColor(.black)
                                        .position(x:90, y:25)
                                    
                                    Image("arrow")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 30)
                                        .position(x:100, y: 27)
                                    Rectangle()
                                        .foregroundColor(.clear)
                                    
                                        .frame(width: 500, height: 0.5)
                                        .background(Color.black)
                                        .cornerRadius(2)
                                        .opacity(0.2)
                                        .position(x:-120, y: 50)
                                    
                                    
                                }
                                
                                NavigationLink(destination: ContentView(), isActive: $navigationLinkActive) {
                                    EmptyView()
                                }
                                Button(action: {
                                    navigationLinkActive = true
                                }) {
                                    Text("Sign Out")
                                        .font(Font.custom("Inter", size: 20).weight(.bold))
                                        .foregroundColor(.white)
                                        .frame(width: 200, height: 51)
                                        .background(Color("background"))
                                        .cornerRadius(12)
                                        .position(x:200 , y:44)
                                }
                                
                                
                                
                                
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

/*struct ProfiView:View {
    @ObservedObject var profilManager = profileManger.shared
    var body: some View {
        if let  image = profilManager.profilImage{
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }else
        {
            
        }
        
    }
    
}
*/
