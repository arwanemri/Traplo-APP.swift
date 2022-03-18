//FOLLOWING PAGE





//  Following.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct Following: View {
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      UITableView.appearance().backgroundColor =  .clear
        
     }
    var body: some View {
      VStack {
        NavigationView{
          ScrollView{
         ForEach(contacts) {contact in
         // List(contacts) {contact in
            HStack {
              ContactRow(contact: contact)
              LikeButton()
              //.padding(.trailing, 39.0)
                .foregroundColor(Color("Color1"))
                .padding(5)
                .background(Color("Color-2"))
                .cornerRadius(10)
            }
           Divider()
          }
        }//scrolview
          .navigationTitle("Following")
          .navigationBarTitleDisplayMode(.inline)
        }
        .padding(.leading, -12.0)
        .searchable(text: /*@PLACEHOLDER=$text@*/.constant("")/*@END_MENU_TOKEN@*/, placement: /*@START_MENU_TOKEN@*/.automatic)
        .accentColor(.white)
      }
        }
    }
  struct Following_Previews: PreviewProvider {
    static var previews: some View {
     ContentView()
        .preferredColorScheme(.light)
        .padding(.top,0)
    }
  }
    
  struct ContactRow: View {
    let contact: Contact
    var body: some View {
      HStack {
        Image(contact.imageName)
          .resizable()
          .aspectRatio(contentMode:.fill)
          .frame(width:60, height:60)
          .clipped()
          .cornerRadius(50)
        VStack(alignment: .leading) {
          Text(contact.imageName)
            .foregroundColor(.black)
            .padding(.leading, 3)
            .frame(width: 160,alignment: .leading)
        }
      }
    }
  }
  struct LikeButton : View {
    @State var isPressed = false
    var body: some View {
      ZStack{
        if isPressed{
        Text("Unfollowing")
  //        .opacity(isPressed ? 1 : 0)
  //        .scaleEffect(isPressed ? 1.0 : 0.1)
        } else{
       //.animation(.linear)
        Text( "Following")
        }
      }
      .frame(width: 90,height: 30)
        .onTapGesture {
          self.isPressed.toggle()
      }
        .foregroundColor(isPressed ? (Color("Color-1")) : (Color("Color1")))
    }
  }























