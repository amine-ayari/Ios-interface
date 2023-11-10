//
//  Otpvalidation.swift
//  userinterface
//
//  Created by Mac Mini 1 on 9/11/2023.
//

import SwiftUI

struct Otpvalidation: View {
    @State var otpText : String = ""
    @FocusState private var isKeyboardshowing:Bool
    var body: some View{
        NavigationView{
            VStack{
                Text("verify OTP")
                    .font(.largeTitle)
                    .frame(width: .infinity, alignment: .leading)
                HStack(spacing : 0){
                    ForEach(0..<6,id:\.self){index in
                        OTPTextBox(index)
                    }
                }
                .background(content:{
                    TextField("",text:$otpText.limit(_length: 6))
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .frame(width: 1, height: 1)
                        .opacity(0.0001)
                        .blendMode(.screen)
                        .focused($isKeyboardshowing)
                    
                })
                .contentShape(Rectangle())
                .onTapGesture {
                    isKeyboardshowing.toggle()
                }
                .padding(.bottom,200)
                .padding(.top ,10)
                
                
                TextField("",text: $otpText)
                Button{
                    
                }label: {
                    Text("verify")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background{
                            RoundedRectangle(cornerRadius: 6, style: .continuous)
                                .fill(.blue)
                        }
                }
                .disableWithOpacity(_condition: otpText.count < 6)
            }
            .padding(.all)
            .frame(maxWidth:.infinity, alignment: .top)
        }.navigationBarBackButtonHidden(true)
    }
        @ViewBuilder
        func OTPTextBox(_ index:Int)->some View{
            ZStack{
                if otpText.count > index{
                    let startIndex = otpText.startIndex
                    let charIndex = otpText.index(startIndex,offsetBy: index)
                    let charToString = String(otpText[charIndex])
                    Text(charToString)
                    
                    
                }else{
                    Text("")
                }
            }
            .frame(width: 45, height: 45 )
            .background{
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .stroke(.gray,lineWidth: 0.5 )
            }
            .frame(maxWidth: .infinity)
            
        }
    }


#Preview {
    Otpvalidation()
}

extension View{
    func disableWithOpacity (_condition : Bool)->some View{
        self
        .disabled(_condition)
        .opacity(_condition ? 0.6 : 1)
    }
}
extension Binding where Value == String {
    func limit(_length : Int)->Self{
        if self.wrappedValue.count > _length  {
            DispatchQueue.main.async{
                self.wrappedValue = String(self.wrappedValue.prefix(_length))
            }
         
        }
        return self
    }
}
