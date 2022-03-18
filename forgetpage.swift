//FORGET PAGE





//  forgetpage.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct forgetpage: View {
 
        @State var email: String = ""
        @State var isShowinglogin:Bool = false
        var body: some View {
            VStack{
            VStack{
                VStack{
                Button {
                    isShowinglogin.toggle()
                } label: {

                    Image(systemName: "arrowshape.turn.up.backward.circle")
                        .foregroundColor(Color("Color-2"))
                }
                .frame(width: 100.0)
                .fullScreenCover(isPresented: $isShowinglogin) {
                       login()
                }
                }
                .padding(.top, -260.0)
                .padding(.trailing, 300.0)
        
                }
                
                WelcomeText()
            
            
                TextField("Enter your Email", text: $email)
                .frame(width: 330.0 ,height: 70)
                .cornerRadius(5.0)
                .textFieldStyle(.roundedBorder)
            
                Button(action: {print("send notification")}) {
                forgButtonContent()
                  }
            }
}
            
        }
    
struct forgButtonContent: View {
    var body: some View {
        VStack{
         Text("Send")
                .font(.headline)
                .foregroundColor(Color("Color-1"))
                .padding()
                .frame(width: 330.0, height: 60)
                .background(Color("Color"))
                .cornerRadius(10.0)
        }
        }
           
    }



struct forgetpage_Previews: PreviewProvider {
    static var previews: some View {
        forgetpage()
    }
}
