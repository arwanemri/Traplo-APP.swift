///PROFILE PAGE


//
//  profilepage.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct profilepage: View {
   
        //var
        var ProfilePost1=Post(image: "ProfilePostImage1", username: "", location: "Melbourne", views: "88")
        var ProfilePost2=Post(image: "ProfilePostImage2", username: "", location: "Cape Town", views: "119")
        var ProfilePost3=Post(image: "ProfilePostImage3", username: "", location: "Valencia", views: "387")
        
        init() {
            let coloredAppearance = UINavigationBarAppearance()
            coloredAppearance.configureWithOpaqueBackground()
            coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
            coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            UINavigationBar.appearance().standardAppearance = coloredAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        }
        
        var body: some View {
            
            var ProfilePostArray=[ProfilePost1,ProfilePost2,ProfilePost3]
            
            VStack{
                    
                    
                    NavigationView{
                        
                        VStack{
                            Image("ProfileImage")
                            Text("Fariba Mirzaii")
                                .multilineTextAlignment(.center)
                            Text("Travel whenever you can, life is short to think twice.")
                                .multilineTextAlignment(.center)
                            
                            
                            Divider()// nn
                            HStack{
                                
                                Button("My post") {
                                    
                                }
                                .foregroundColor(Color(red: 0.17647058823529413, green: 0.1568627450980392, blue: 0.7137254901960784))
                                
                                
                                
                                NavigationLink("Following", destination: Following()
                                )
                                    .foregroundColor(Color(red: 0.17647058823529413, green: 0.1568627450980392, blue: 0.7137254901960784))
                                
                                NavigationLink("Likes", destination: LikePage()
                                )
                                    .foregroundColor(Color(red: 0.17647058823529413, green: 0.1568627450980392, blue: 0.7137254901960784))
                                Spacer()
                                
                            }//Hstack
                            .padding()
                            
                            ScrollView{
                                ForEach(ProfilePostArray,id:\.image) { p in
                                    //    List(ProfilePostArray, id: \.image){p in
                                    NavigationLink(destination: Text("") , label: {
                                        VStack{
                                            ZStack(alignment:.top){
                                                Image(p.image)
                                                    .resizable()
                                                    .frame(height:180)
                                                HStack(spacing:220){
                                                    VStack(alignment: .leading){
                                                        
                                                        Text(p.views)
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color.white)
                                                            .padding()
                                                        Spacer()
                                                        
                                                        Text(p.location)
                                                            .fontWeight(.bold)
                                                            .foregroundColor(Color.white)
                                                        //   .frame(maxWidth: .infinity)
                                                            .padding()
                                                    }//Vstack
                                                    
                                                    LikeButtons()
                                                        .padding(.bottom, 135)
                                                        .padding()
                                                }//Hstack
                                            }//zstack
                                        }//vstack for post
                                        
                                    })
                                    
                                }//List
                                
                            }
                            Spacer()//
                            
                        }.navigationTitle("Profile")
                            .navigationBarTitleDisplayMode(.inline)
                        //    .appearance()
                    }//navigation view
                   
                
                
            }//vstack of body
            
        }
    }

    struct LikeButtons : View {
        @State var isPressed = false
        @State var islike = false
        var body: some View {
            ZStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .opacity(isPressed ? 1 : 0)
                    .scaleEffect(isPressed ? 1.0 : 0.1)
                    .animation(.linear)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 15, height: 15)
            }.font(.system(size: 40))
                .onTapGesture {
                    self.isPressed.toggle()
                    
                }
                .foregroundColor(isPressed ? .red : .white)
        }
    }
    //---------


struct profilepage_Previews: PreviewProvider {
    static var previews: some View {
        profilepage()
    }
}
