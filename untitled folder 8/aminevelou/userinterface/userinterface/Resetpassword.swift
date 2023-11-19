import SwiftUI

struct ResetPasswordView: View {
    @State private var email: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
        NavigationView {
            VStack {
                Image("logo") // Replace "your_logo" with the name of your logo image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
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

                
                
                
                
                
                
                NavigationLink(destination: ContentView()) {
                    Text("Save")
                        .bold()
                        .font(.title3)
                        .padding(EdgeInsets(top:5,leading:32,bottom: 16,trailing: 32))
                        .frame(width: 290,height: 51)
                        .background(Color("background"))
                        .cornerRadius(12)
                        .padding(.top,20)
                        .foregroundColor(Color("textcolor"))
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
