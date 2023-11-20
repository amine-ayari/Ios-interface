import SwiftUI
import LocalAuthentication

struct ContentView: View {
    
    @State var email = UserDefaults.standard.string(forKey: "rememberedEmail") ?? ""
    @State var password = ""
    @State private var wrongpassword = ""
    @State private var navigateToLocation: String? = nil
    @State private var ischecked = UserDefaults.standard.bool(forKey: "isRemembered")
    @FocusState private var isKeyboardshowing: Bool
    
    @State private var isAuthenticating = false
    @State private var authenticationError: AuthenticationError?
    @State private var isFaceIDAuthenticated = true
    
    var body: some View {
       
            NavigationView {
                ZStack{
                    Image("bgapp")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .opacity(0.1)
                VStack{
                    
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    TextField("write your username", text: $email)
                        .font(.title3)
                        .padding(EdgeInsets(top: 5, leading: 32, bottom: 16, trailing: 32))
                        .frame(width: 343, height: 51)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(12)
                        .padding()
                        .focused($isKeyboardshowing)
                    
                    SecureField("write your Password", text: $password)
                        .font(.title3)
                        .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
                        .frame(width: 343, height: 51)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(12)
                        .padding()
                        .focused($isKeyboardshowing)
                    
                        .onTapGesture {
                            isKeyboardshowing.toggle()
                        }
                        .padding(.bottom, 20)
                        .padding(.top, 10)
                    
                    Toggle(isOn: $ischecked) {
                        Text("Remember me ")
                            .labelsHidden()
                        
                            .foregroundColor(Color("textcolor"))
                    }.padding()
                    
                    Button(action: {
                        if ischecked {
                            UserDefaults.standard.set(email, forKey: "rememberedEmail")
                            UserDefaults.standard.set(true, forKey: "isRemembered")
                        } else {
                            UserDefaults.standard.removeObject(forKey: "rememberedEmail")
                            UserDefaults.standard.set(false, forKey: "isRemembered")
                        }
                        // Navigate to ProfileView and pass the email
                        navigateToProfileView()
                    }) {
                        Text("Login")
                            .font(Font.custom("Inter", size: 15).weight(.black))
                            .foregroundColor(Color("textcolor"))
                            .padding((EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 30)))
                            .background(Color("background"))
                            .cornerRadius(12)
                    }
                    
                    NavigationLink(destination: ProfileView(), tag: "ProfileView", selection: $navigateToLocation) {
                        EmptyView()
                    }
                    .hidden()
                    
                    NavigationLink(destination: Signin(), label: {
                        Text("Don't have an account")
                    })
                    .font(Font.custom("Inter", size: 15).weight(.black))
                    .foregroundColor(Color("textcolor"))
                    .padding((EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 30)))
                    .background(Color.white)
                    .cornerRadius(12)
                    
                    NavigationLink(destination: ForgetPassword()) {
                        Text("Forget your password ?")
                            .foregroundColor(Color("textcolor"))
                            .padding((EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 30)))
                            .background(Color.white)
                            .cornerRadius(12)
                    }
                }
            }.navigationBarBackButtonHidden(true)
                .alert(item: $authenticationError) { error in
                    Alert(title: Text("Authentication Failed"), message: Text(error.message), dismissButton: .default(Text("OK")))
                }.navigationBarBackButtonHidden(true)
        }
    
    }
    
    func navigateToProfileView() {
        navigateToLocation = "ProfileView"
    }
    
    struct AuthenticationError: Identifiable {
        let id = UUID()
        let message: String
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
          }
    }
}

/*struct ProfileView: View {
    var email: String
    
    var body: some View {
        Text("Welcome, \(email)")
    }
}*/
