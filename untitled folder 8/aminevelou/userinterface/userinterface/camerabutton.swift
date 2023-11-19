//
//  camerabutton.swift
//  userinterface
//
//  Created by Mac Mini 5 on 15/11/2023.
//

import SwiftUI

struct camerabutton: View {
    @Binding var showAction:Bool
    var body: some View {
        Button(action: {
            self.showAction.toggle()
            
        }) {
            RoundedRectangle(cornerRadius: 30)
                  .frame(width:36 ,height: 36,alignment: .center)
                  .foregroundColor(.white)
              
                  .overlay(
                      RoundedRectangle(cornerRadius: 30)
                      .frame(width:36 ,height: 36,alignment: .center)
                      .foregroundColor(Color.init(red:232/255,green: 223/255,blue: 231/255))
                      
                      .overlay(Image(systemName: "camera.fill")
                          .foregroundColor(.black)
                      )
                  )
              
        }
   
        
        
        
    }
}

#Preview {
    camerabutton(showAction: .constant(false))
        .previewLayout(.sizeThatFits)
        .padding()
}
