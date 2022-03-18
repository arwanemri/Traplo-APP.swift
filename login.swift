//LOGIN PAGE




//  login.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct login: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var isShowingHome : Bool = false
    @State var isShowingsignup:Bool=false
    @State var isShowingHOME:Bool=false
    @State var isShowingforg:Bool=false
    @State var isShowingpass=false
    var body: some View {
        VStack {
            
            VStack{
            Button {
                isShowingHOME.toggle()
            } label: {

                Image(systemName: "arrow.forward")
                    .foregroundColor(Color("Color-2"))
            }
            
            .fullScreenCover(isPresented: $isShowingHOME) {
                   Homepage1()
            }
            }
            .padding(.top,-180)
                .padding(.leading, 300.0)
        
            
            WelcomeText()
            VStack{
                TextField("Username or email", text: $username)
                .frame(width: 300.0 ,height: 60)
                .cornerRadius(5.0)
                .textFieldStyle(.roundedBorder)
                ZStack{
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(width: 300.0,height: 50)
                .cornerRadius(5.0)
                    
                   // Button{
                        
                   // }
              //  label:{
                   Image(systemName: "eye.slash")
                        .foregroundColor(Color.gray)
                        .padding(.leading, 250.0)
                    //}
                }
            }
            .fullScreenCover(isPresented: $isShowingforg) {
                forgetpage()
            }
            Button {
                isShowingforg.toggle()
            } label: {
               Forgetten()
            }
      
            .fullScreenCover(isPresented: $isShowingHome) {
                Homepage()
            }
          
            Button {
                if(!self.password.isEmpty && !self.username.isEmpty  ){
                isShowingHome.toggle()
                }
            } label: {
                LoginButtonContent2()
            }
            .padding(.top,40)
           Spacer()
            HStack{
                Text("Don't have an acount? ")
                    .fullScreenCover(isPresented: $isShowingsignup) {
                           Signup1()
                    }
                    
                    Button {
                        isShowingsignup.toggle()
                    } label: {
                        createacc()
                    }
        
                }
            }.padding(.top, 190.0)
        }
        
        }


struct LoginButtonContent2: View {
    var body: some View {
        VStack{
         Text("Log In")
                .font(.headline)
                .foregroundColor(Color("Color-1"))
                .padding()
                .frame(width: 300, height: 60)
                .background(Color("Color"))
                .cornerRadius(10.0)
        }
        }
}
           
    struct Forgetten: View {
        var body: some View {
            VStack{
             Text("Forgotten password?")
                    .font(.headline)
                    .foregroundColor(Color("Color-1"))
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 133.0)
                    
            }
        }
        }
    struct createacc: View {
        var body: some View {
            VStack{
             Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(Color("Color-1"))
                    .multilineTextAlignment(.trailing)
                   
                    
            }
        }
        }


struct WelcomeText: View {
    var body: some View {
                VStack {
                    Text("Traplo")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color("Color-1"))
                        .multilineTextAlignment(.center)
                        }
                    }
                }


struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
