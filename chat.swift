//
//  chat.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 15/07/1443 AH.
//

import SwiftUI

struct chat: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      }
    
    

    @State var text: String = ""
    var body: some View {
            
         
            NavigationView{
                
                
        
                VStack(alignment:.leading){
                    ScrollView{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:300, height: 100)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.036, brightness: 0.047, opacity: 0.374))
                            .padding()
                            .padding(.leading, 75.0)
                        Text("Are you interested to join to explore new places ?:)")
                            .padding(.leading,74.0)
                            .padding(.top, -4.0)
                        HStack{
                            Text("6:30")
                                .font(.system(size:14))
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.947, brightness: 0.036, opacity: 0.47))
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.96, brightness: 0.023, opacity: 0.47))
                                .font(.system(size: 14))
                                .frame(width: 1.0)
                                
                        }
                        .padding(.top, 77.0)
                        .padding(.leading, -107.0)
                    }
                    
                    
                    HStack{
                        Image("Pic1")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .padding(.leading,18.0)
                        
                        
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                
                                .frame(width: 160, height: 60)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.033, opacity: 0.126))
                            Text("Of course :)")
                                .padding([.leading, .bottom, .trailing],29.0)
                                .padding(.top,24.0)
                               
                        
                            
                            HStack(spacing:10){
                                
                                Text("6:52")
                                    .font(.system(size:14))
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.054, brightness: 0.077, opacity: 0.47))
                                    .padding(.leading,64.0)
                               //Image(systemName: "checkmark")
                                
                                
                            }
                            .padding(.top,39.0)
                            .padding(.leading,52.0)
                            
                        }
                        .padding(.leading, 1)
                    }
                    .padding(.leading, -156.0)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 130, height: 60)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.035, brightness: 0.032, opacity: 0.374))
                        Text("Greate :)")
                           
                            
                        
                        HStack{
                            Text("7:00")
                                .font(.system(size:14))
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.041, brightness: 0.023, opacity: 0.47))
                            Image(systemName: "checkmark")
                                .foregroundColor(Color(hue: 1.0, saturation: 0.046, brightness: 0.037, opacity: 0.47))
                                .font(.system(size: 14))
                                .frame(width: 1.0)
                         
                        }.padding(.top, 40.0)
                            .padding(.trailing, 80.0)
                    }.padding(.leading,245.0)
                      
                        HStack{
                            Image("Pic2")
                                .resizable()
                                .frame(width:60 , height:60)
                                .clipShape(Circle())
                                .padding(.leading,-55.0)
                            
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 90, height: 60)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.033, opacity: 0.126))
                            Text("Ok")
                                .fontWeight(.regular)
                                .padding([.leading, .bottom, .trailing],30.0)
                                .padding(.top,28.0)
                            Text("7:30")
                                .font(.system(size:14))
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .padding(.top, 42.0)
                                .padding(.leading, 49.0)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.041, brightness: 0.023, opacity: 0.47))
                    
                        }
                            
                        .padding(.trailing, 155.0)
                        }
                        HStack{
                            Image("Pic3")
                                .resizable()
                                .frame(width:60 , height:60)
                                .clipShape(Circle())
                                .padding(.leading,-14.0)
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 130, height: 60)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.033, opacity: 0.126))
                            Text("Yes Sure")
                                .padding([.leading, .bottom, .trailing],31.0)
                                .padding(.top,33.0)
                            Text("8:00")
                                .font(.system(size:14))
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .padding(.top, 40.0)
                                .padding(.leading, 88.0)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.041, brightness: 0.023, opacity: 0.47))
                        }
                        .padding(.top, 7.0)
                        .padding(.trailing, 155)
                        }
                    }
                 
                    ZStack{
                    TextField("Write here", text: $text)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .keyboardType(.default)
                            .padding(.leading,18.0)
                            .padding(.trailing, 3.0)
                        HStack{
                            Image(systemName: "paperplane.fill")
                                .foregroundColor(self.text == "" ? Color(hue:1.0, saturation:0.963, brightness: 0.027,opacity: 0.400) : .blue)
                                .font(.system(size:17))
                                .padding(.trailing,-4.0)
                            Image(systemName:"photo.fill")
                                .foregroundColor(Color(hue:1.0,
                                                       saturation: 0.968, brightness: 0.047,opacity: 0.400))
                                .padding(.trailing,-4.0)
                                .font(.system(size: 17))
                            Image(systemName: "video.fill")
                                .foregroundColor(Color(hue:1.0,
                                                       saturation: 0.958,brightness: 0.071, opacity: 0.400))
                                .font(.system(size: 17))
                        } .padding(.leading, 288.0)
                
                
                }
                
                }
                
                
                

                
                
                
                
                
                
                .navigationTitle("Travel more")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button{} label:{Image(systemName: "pencil.circle")
                .resizable(resizingMode: .tile)
                .foregroundColor(Color.white)
                })
            }
            }
            }
        

struct chat_Previews: PreviewProvider {
    static var previews: some View {
        chat()
    }
}
