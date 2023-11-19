import SwiftUI
import LocalAuthentication

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State private var wrongpassword = ""
    @State private var navigateToLocation = ""
    @State private var ischecked = false
    @FocusState private var isKeyboardshowing: Bool
    
    @State private var isAuthenticating = false
    @State private var authenticationError: AuthenticationError?
    @State private var isFaceIDAuthenticated = false
    
    var body: some View {
        
        NavigationView {
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
                        .background(Color("background"))
                        .foregroundColor(Color("textcolor"))
                }.padding()
                
                Button(action: {
                    authenticateWithBiometrics()
                }) {
                    Text("Login")
                        .font(Font.custom("Inter", size: 15).weight(.black))
                        .foregroundColor(Color("textcolor"))
                        .padding((EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 30)))
                        .background(Color("background"))
                        .cornerRadius(12)
                }
                
                NavigationLink(destination: Signin(), isActive: $isFaceIDAuthenticated) {
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
                }
                .font(Font.custom("Inter", size: 15).weight(.black))
                .foregroundColor(Color("textcolor"))
                .padding((EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 30)))
                .background(Color("background"))
                .cornerRadius(12)
            }
        }.navigationBarBackButtonHidden(true)
        .alert(item: $authenticationError) { error in
            Alert(title: Text("Authentication Failed"), message: Text(error.message), dismissButton: .default(Text("OK")))
        }
    }
    
    func authenticateWithBiometrics() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Authenticate with Face ID"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    if success {
                        // Biometric authentication succeeded
                        print("Biometric authentication succeeded")
                        self.isFaceIDAuthenticated = true
                    } else {
                        // Biometric authentication failed
                        if let error = authenticationError {
                            self.authenticationError = AuthenticationError(message: error.localizedDescription)
                        }
                    }
                }
            }
        } else {
            // Biometric authentication not available
            if let error = error {
                self.authenticationError = AuthenticationError(message: error.localizedDescription)
            }
        }
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
