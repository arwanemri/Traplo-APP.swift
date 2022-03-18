//HOMEPAGE




//  Homepage1.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//
import SwiftUI
struct Homepage1: View {
    
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance

    }
    var posth1=posts(image: "h", usernamea: "Talah Marad", views: "88", location: "Bavarian Alps")
    var posth2=posts(image: "A", usernamea:"Katayama Fumiki", views: "390", location: "Metropolitan")
    
    var posth3=posts(image: "x", usernamea: "Asaka Chimako", views: "100", location: "Alula")
    
    var posth4=posts(image: "s", usernamea: "Fariba Mirzaii", views: "88", location: "Melbourne")
    
    var posth5=posts(image: "r", usernamea: "Hurry lang", views: "200", location: "Canada")
    @State var isShowinglogiN: Bool = false
    @State private var searchText=""
    
    var body: some View {
        var hpostsArr=[posth1,posth2,posth3,posth4,posth5]
        NavigationView {
            
            VStack{
                ScrollView{
                ForEach(hpostsArr, id:\.image){p in
                    NavigationLink(destination: {postpage()}, label: {
                        VStack{
                            ZStack(alignment:.top){
                                Image(p.image)
                                    .resizable()
                                    .frame(height:180)
                                HStack(spacing:210){
                                    VStack(alignment: .leading,spacing: 5){
                                        Text(p.usernamea)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        
                                        
                                        Text(p.views)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                       Spacer()
                                        
                                        Text(p.location)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding( .leading, 5.0)
                                    }
                            LikeButtona()
                                        .padding(.bottom,130)
                                    
                                      
                                        
                                    
                                    
                                }
                                
                            }
                        }
                    })
                }
            }//vstack for list
            
            
            .searchable(text: $searchText)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button{}
                                label:{Image(systemName:"plus.circle")
                    .resizable(resizingMode: .tile)
                    .foregroundColor(Color.white)
                
            })
            .fullScreenCover(isPresented: $isShowinglogiN) {
                   login()
                }
            .navigationBarItems(leading: Button{
                isShowinglogiN.toggle()
            }
                                label:{Image(systemName:"arrowshape.turn.up.left.circle")
                    .resizable(resizingMode: .tile)
                    .foregroundColor(Color.white)
            })
                
        }
        }
    }
}

struct LikeButtona : View {
    @State var isPressed = false
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 15, height: 15)
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
            //   .animation(.linear)
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

struct Homepage1_Previews: PreviewProvider {
    static var previews: some View {
        Homepage1()
    }
}
