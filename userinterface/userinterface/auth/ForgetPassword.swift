import SwiftUI

struct ForgetPassword: View {
    @State private var email = ""
    @State private var username = ""
    @State private var navigateToLocation = false

    var body: some View {
        NavigationView {
            ZStack {
                Image("bgapp")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.1)

                VStack {
                    Spacer()

                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .padding()

                    Text("Forget Password")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 16)

                    TextField("Enter your email or username", text: $email)
                        .font(.title3)
                        .padding()
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(12)
                        .padding(.horizontal, 32)

                    NavigationLink(
                        destination: OtpValidation(),
                        isActive: $navigateToLocation,
                        label: {
                            Text("Reset Password")
                                .font(.title3)
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.green)
                                .cornerRadius(12)
                                .padding(.horizontal, 32)
                        })
                        .padding(.top, 16)

                    Spacer()
                }
            }
        }
    }
}

struct ForgetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPassword()
    }
}
