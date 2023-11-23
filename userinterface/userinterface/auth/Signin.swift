import SwiftUI

struct Signin : View {
@State var email = ""
@State var first_name = ""
@State var password = ""
@State var last_name = ""
@State var phone = ""
@State var adresse = ""
@State var role = ""
@State var wallet = ""


@State private var navigationLinkActive: Bool = false

let apiManager = APIManager()
@StateObject private var userViewModel = UserViewModel()


var body: some View {
    NavigationView {
        ScrollView{
        ZStack {
            Image("bgapp")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(0.1)
            
            
            VStack {
                VStack(spacing:1) {
                    ZStack {
                        Text("             Create your account ")
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
                            TextField("Enter your username", text: $last_name)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 60)
                                .foregroundColor(Color("textcolor"))
                            
                            TextField("Enter First Name", text: $first_name)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .foregroundColor(Color("textcolor"))
                                .padding(.top, 10)
                            
                            TextField("Phone", text: $phone)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .foregroundColor(Color("textcolor"))
                                .padding(.top, 10)
                            
                            TextField("Email", text: $email)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 10)
                                .foregroundColor(Color("textcolor"))
                            
                            
                            
                            TextField("adresse", text: $adresse)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 10)
                                .foregroundColor(Color("textcolor"))
                            
                            TextField("wallet", text: $wallet)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 10)
                                .foregroundColor(Color("textcolor"))
                            
                            SecureField("Password", text: $password)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 10)
                                .foregroundColor(Color("textcolor"))
                            
                            
                            SecureField("role", text: $role)
                                .font(.title3)
                                .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                                .frame(width: 300, height: 51)
                                .background(Color.gray.opacity(0.05))
                                .cornerRadius(12)
                                .padding(.top, 10)
                                .foregroundColor(Color("textcolor"))
                                .padding()
                            
                            
                            
                            NavigationLink(destination: ProfileView(), isActive: $navigationLinkActive) {
                                EmptyView()
                            }
                            Button(action: {
                                navigationLinkActive = true
                                
                                userViewModel.registerUser (first_name: first_name, email: email, password: password, phone: phone, last_name:last_name,adresse: adresse, role: role,wallet: wallet)
                            }) {
                                Text("SignUp")
                                    .font(Font.custom("Inter", size: 20).weight(.bold))
                                    .foregroundColor(.white)
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
                                    .frame(width: 343, height: 51)
                                    .background(Color(red: 0.06, green: 0.21, blue: 0.19))
                                    .cornerRadius(12)
                            }
                            
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
            }.padding(.leading,-190)
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
