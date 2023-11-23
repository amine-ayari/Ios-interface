import SwiftUI

struct OtpValidation: View {
    @State var otpText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Verify OTP")
                    .font(.largeTitle)

                HStack(spacing: 0) {
                    ForEach(0..<6, id: \.self) { index in
                        OTPTextBox(index)
                    }
                }
                .padding(.bottom, 200)
                .padding(.top, 10)

                HStack(spacing: 10) {
                    ForEach(Array(otpText), id: \.self) { character in
                        Text(String(character))
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(width: 45, height: 45)
                            .background(
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .stroke(Color.gray, lineWidth: 0.5)
                            )
                    }
                }

                Button(action: {
                    performVerification()
                }) {
                    Text("Verify")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 6, style: .continuous)
                                .fill(Color.blue)
                        )
                }
                .disabled(otpText.count < 6)
                .opacity(otpText.count < 6 ? 0.6 : 1)
                .onTapGesture {
                    performVerification()
                }
            }
            .padding(.all)
            .frame(maxWidth: .infinity, alignment: .top)
        }
        .navigationBarBackButtonHidden(true)
    }

    func performVerification() {
        // Implement your OTP verification logic here
        if otpText == "123456" {
            print("OTP verification successful")
        } else {
            print("OTP verification failed")
        }
    }

    @ViewBuilder
    func OTPTextBox(_ index: Int) -> some View {
        ZStack {
            if otpText.count > index {
                let charIndex = otpText.index(otpText.startIndex, offsetBy: index)
                let charToString = String(otpText[charIndex])
                Text(charToString)
                    .font(.title)
            } else {
                Text("")
            }
        }
        .frame(width: 45, height: 45)
        .background(
            RoundedRectangle(cornerRadius: 6, style: .continuous)
                .stroke(Color.gray, lineWidth: 0.5)
        )
        .frame(maxWidth: .infinity)
    }
}

struct OtpValidation_Previews: PreviewProvider {
    static var previews: some View {
        OtpValidation()
    }
}
