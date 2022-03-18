//SIGN UP PAGE





//  Signup1.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI
struct Signup1: View {
        @State private var username: String = ""
        @State  private var firstname: String = ""
        @State private var lastname: String = ""
        @State private var email: String = ""
        @State private var age: String=""
        @State private var password: String = ""
        @State private var phone:String=""
        @State private var gender: String = ""
        @State var isShowinglogin: Bool = false
        var body: some View {
            VStack{
                WelcomeText()
                    TextField("Username", text: $username)
                    .frame(width: 330.0 ,height: 70)
                    .cornerRadius(5.0)
                    .textFieldStyle(.roundedBorder)
                    
                
                    ZStack{
                    TextField("Email", text: $email)
                    .frame(width: 330.0 ,height: 70)
                    .cornerRadius(5.0)
                    .textFieldStyle(.roundedBorder)
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.gray)
                            .padding(.leading, 300.0)
                    }
                ZStack{
                SecureField("Password", text: $password)
                .frame(width: 330.0 ,height: 70)
                .cornerRadius(5.0)
                .textFieldStyle(.roundedBorder)
                    
                    Image(systemName: "eye.slash")
                        .foregroundColor(Color.gray)
                        .padding(.leading, 300.0)
                }
            
                .fullScreenCover(isPresented: $isShowinglogin) {
                   login()
                }
                Button {
                    if(!self.password.isEmpty && !self.username.isEmpty && !self.age.isEmpty && !self.email.isEmpty  && !self.gender.isEmpty   &&  !self.phone.isEmpty &&  !self.lastname.isEmpty  && !self.firstname.isEmpty  ){
                        isShowinglogin.toggle()}
                } label: {
                    signButtonContent()
                }
                .padding(.top)
                
                Spacer()
                
                .fullScreenCover(isPresented: $isShowinglogin) {
                       login()
                }

                HStack{
                    
                    Text("Already have an acount? ")
                    
                    .fullScreenCover(isPresented: $isShowinglogin) {
                           login()
                    }
                    
                    Button {
                      
                            isShowinglogin.toggle()
                    } label: {
                        alreadyacc()
                    }
                  //  Button(action: {print("go login")}) {
                     //   alreadyacc()
                    }
                }
                
            .padding(.top, 150.0)
            }
          
                
            }
struct signButtonContent: View {
    var body: some View {
        VStack{
         Text("Create account")
                .font(.headline)
                .foregroundColor(Color("Color-1"))
                .padding()
                .frame(width: 330.0, height: 60)
                .background(Color("Color"))
                .cornerRadius(10.0)
        }
        }
           
    }
struct alreadyacc: View {
    var body: some View {
        VStack{
         Text("login")
                .font(.headline)
                .foregroundColor(Color("Color-1"))
                .multilineTextAlignment(.trailing)
               
                
        }
    }
    }

struct Signup1_Previews: PreviewProvider {
    static var previews: some View {
        Signup1()
    }
}
