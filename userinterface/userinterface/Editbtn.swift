//
//  Editbtn.swift
//  userinterface
//
//  Created by iMac on 14/11/2023.
//

import SwiftUI

struct Editbtn: View {
    var body: some View {
        NavigationView{
            HStack{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 24,style: .circular)
                        .fill((.green))
                        .bold()
                        .frame(width:140,height: 32)
                        Text("edit")
                        .buttonStyle(.bordered)
      

              
                        
                        
                        
                    }
                }
                
            }
        }
        
    }

                
            
        

struct Editbtn_Previews: PreviewProvider {
    static var previews: some View {
        Editbtn()
    }
}
