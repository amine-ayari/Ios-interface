import SwiftUI

struct Signin: View {
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var Cpassword = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Color1")
                    .ignoresSafeArea()
                
                VStack {
                    VStack(spacing:1) {
                        ZStack {
                            Text("Create your account ")
                                .foregroundColor(Color("textcolor"))
                                .font(.system(size:35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.trailing)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading,20)
                                .foregroundColor(Color("textcolor"))
                                .padding(.top)
                            
                            Button(action: {
                                if let url = URL(string: "https://www.facebook.com") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image("logo")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.top, 100)
                            }
                        }
                        
                        VStack(spacing: 1) {
                            VStack {
                                TextField("Enter your username", text: $username)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343, height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top, 60)
                                    .foregroundColor(Color("textcolor"))
                                
                                TextField("Enter your Email", text: $email)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343, height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .foregroundColor(Color("textcolor"))
                                    .padding(.top, 10)
                                
                                SecureField("Password", text: $password)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343, height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top, 10)
                                    .foregroundColor(Color("textcolor"))
                                
                                SecureField("Confirm your password", text: $Cpassword)
                                    .font(.title3)
                                    .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                    .frame(width: 343, height: 51)
                                    .background(Color.gray.opacity(0.05))
                                    .cornerRadius(12)
                                    .padding(.top, 10)
                                    .foregroundColor(Color("textcolor"))
                                
                                NavigationLink(destination: ProfileView()) {
                                    Text("Sign In")
                                }
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 290, height: 51)
                                .background(Color("background"))
                                .cornerRadius(12)
                                .padding(.top, 20)
                                .foregroundColor(Color("textcolor"))
                                
                                HStack(spacing: 20) {
                                    Button(action: {
                                        if let url = URL(string: "https://www.facebook.com") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("fb")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .padding(.horizontal, 60)
                                            .padding(.vertical, 40)
                                    }
                                    
                                    Button(action: {
                                        if let url = URL(string: "https://www.google.com") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("gog")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                    }
                                }
                                
                                NavigationLink(destination: ContentView()){
                                    Text("Already have an account?")
                                }
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 290, height: 51)
                                .cornerRadius(12)
                                .padding(.top, 20)
                                .foregroundColor(Color("textcolor"))
                            }
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Signin_Previews: PreviewProvider {
    static var previews: some View {
        Signin()
    }
}
