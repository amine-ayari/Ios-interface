import SwiftUI

struct OtpValidation: View {
    @State var otpText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Verify OTP")
                    .font(.largeTitle)
                    .frame(width: .infinity, alignment: .leading)
                HStack(spacing: 0) {
                    ForEach(0..<6, id: \.self) { index in
                        OTPTextBox(index)
                    }
                }
                .background(
                    TextField("", text: $otpText)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .frame(width: 1, height: 1)
                        .opacity(0.0001)
                        .accessibility(hidden: true)
                )
                .contentShape(Rectangle())
                .padding(.bottom, 200)
                .padding(.top, 10)

                Button(action: {
                    // Perform verification logic here
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
            }
            .padding(.all)
            .frame(maxWidth: .infinity, alignment: .top)
        }
        .navigationBarBackButtonHidden(true)
    }

    @ViewBuilder
    func OTPTextBox(_ index: Int) -> some View {
        ZStack {
            if otpText.count > index {
                let charIndex = otpText.index(otpText.startIndex, offsetBy: index)
                let charToString = String(otpText[charIndex])
                Text(charToString)
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
