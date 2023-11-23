import SwiftUI

struct ResetPasswordView: View {
    @State private var email: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("bgapp")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.1)
                
                VStack {
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding()
                    
                    Text("Reset Password")
                        .font(.title)
                        .bold()
                        .padding()
                        
                    
                    TextField("Email or Username", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("New Password", text: $newPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Save")
                            .bold()
                            .font(.title3)
                            .padding(EdgeInsets(top: 10, leading: 32, bottom: 16, trailing: 32))
                            .frame(width: 290, height: 51)
                            .background(Color("background"))
                            .cornerRadius(12)
                            .foregroundColor(Color("textcolor"))
                    }
                    .padding(.bottom, 20)
                }
                .padding()
            }
        }
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}
