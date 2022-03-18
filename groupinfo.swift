//
//  groupinfo.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 15/07/1443 AH.
//

import SwiftUI

struct groupinfo: View {
    
    @State var show = false
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
      
        VStack{
            NavigationView{
                VStack{
                    
                    Spacer()
                    HStack{
                        Button(action: {self.show = false}, label: {Text("My Group")})
                        
                        
                            .frame(width: 120.0, height: 50.0)
                            .foregroundColor(show ? Color("primaryColor"): .white)
                        // .padding(5)
                            .background(Color("TopBarColorbutton"))
                            .cornerRadius(10)
                        
                        
                        Spacer()
                            .frame(width: 70.0, height: 50.0)
                        Button(action: {self.show = true}, label: {Text("All")})
                            .frame(width: 120.0, height: 50.0)
                            .foregroundColor(!show ? Color("primaryColor"): .white)
                        // .padding(5)
                            .background(Color("TopBarColorbutton"))
                        
                            .cornerRadius(10)
                        
                    }
                    
                    //hstak
                    //.frame(width: 70, height: 50)
                    //  Spacer()
                    ScrollView{
                      
                        VStack{

                            if !show{
                                ForEach(infor)
                                { info in NavigationLink(destination: chat(), label: {
                                    contentMyGroup(inform: info)
                                        .foregroundColor(Color("primaryColor"))
                                })
                                }//listmygroup
                                
                                
                        
                                
                                
                            }else
                            {
                                ForEach(allgroup1)
                                { allgroup in
                                     NavigationLink(destination: chat(), label: {
                                    contentAll(all_group : allgroup )
                                .foregroundColor(Color("primaryColor"))
                                    })//listallgrou
                        }//list
                        
                    }//
                }//else1
                        }
                    
                        }.navigationTitle("Groups")
                .navigationBarTitleDisplayMode(.inline)
                
            }.searchable(text: /*@PLACEHOLDER=$text@*/.constant("")/*@END_MENU_TOKEN@*/, placement: /*@START_MENU_TOKEN@*/.automatic)
        }//nav
        //  .navigationTitle("Groups")
        }
        
}

//body
//VIEW
struct groupinfo_Previews: PreviewProvider {
    static var previews: some View {
        groupinfo()
            .padding(.top,.zero)
    }
}

struct contentMyGroup: View {
    let inform: info
    var body: some View {
        
      
        HStack(spacing: 15){

            Image(inform.imageName)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 60, height:60)
                .clipped()
                .cornerRadius(50)
                .padding()
            Text(inform.name)
                .font(.system(size: 21, weight: .medium,design: .default))
            
            Spacer()
            
            VStack(alignment: .trailing){
            Text(inform.date)
                    .font(.system(size: 16, weight: .thin,design: .rounded))
                    .padding(.trailing)
                
            }
        }
        Divider()
    }
}



struct contentAll: View {
    let all_group : allgroup
    var body: some View {
        
      
        HStack(spacing: 15){

            Image(all_group.imageName1)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 60, height:60)
                .clipped()
                .cornerRadius(50)
                .padding()
            Text(all_group.grpname)
                .font(.system(size: 21, weight: .medium,design: .default))
            
            Spacer()
            
            VStack(alignment: .trailing){
            Text(" + ")
                    .font(.system(size: 25, weight: .bold,design: .rounded))
                    .padding(.trailing)
                    .foregroundColor(Color("primaryColor"))
                
            }
        }
        Divider()
    }
}
