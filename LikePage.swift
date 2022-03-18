//LIKE PAGE



//  LikePage.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct LikePage: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      }
    
    
    var likedPost1=Post(image: "LikeImage1", username: "Darren Adam", location: "Kilimanjaro", views: "1348")
    var likedPost2=Post(image: "LikeImage2", username: "Peter Taylor", location: "San Diego", views: "933")
    var likedPost3=Post(image: "LikeImage3", username: "Jel Chibuzo", location: "New Zealand", views: "400")
    
    
    
    var body: some View {
        var likedPostArray=[likedPost1,likedPost2,likedPost3]
        
        VStack{
            
            NavigationView {
                VStack{
                    ScrollView{
                        ForEach(likedPostArray,id:\.image) { p in
                            //List(likedPostArray, id:\ .image){p in
                            NavigationLink(destination: Text("") , label: {
                                VStack{
                                    ZStack(alignment:.top){
                                        Image(p.image)
                                            .resizable()
                                            .frame(height:180)
                                        HStack(spacing:220){
                                            VStack(alignment: .leading,spacing: 5){
                                                Text(p.username)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.white)
                                                
                                                
                                                Text(p.location)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.white)
                                                
                                                Text(p.views)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.white)
                                                
                                            }
                                            UnLikeButton()
                                                .padding(.bottom, 50)
                                        }
                                        
                                    }
                                }//vstack for posts
                            })
                            
                            
                            
                        }//List
                    }
                    
                }//vstack
                .navigationTitle("Likes")
                .navigationBarTitleDisplayMode(.inline)
            }//navigation
            
        }
    }
}

struct UnLikeButton : View {
    @State var isPressed = false
    var body: some View {
        ZStack {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 15, height: 15)
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
            //    .animation(.linear)
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 15, height: 15)
        }.font(.system(size: 40))
            .onTapGesture {
                self.isPressed.toggle()
            } .animation(.linear)
            .foregroundColor(isPressed ? .white : .red)
    }
}


struct LikePage_Previews: PreviewProvider {
    static var previews: some View {
        LikePage()
    }
}








