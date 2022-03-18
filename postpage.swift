//POST-HOME PAGE 
//


//postpage.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

struct postpage: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "Color-3")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      }
    
    
    @State var text : String =  """
    Bavarian Alps, German Bayerische Alpen,
    northeastern segment of the Central Alps along
    the German-Austrian border. The mountains extend
      east-northeastward for 70 miles (110 km) from the
    Lechtaler Alps to the bend of the Inn River near
    Kufstein, Austria. Zugspitze (9,718 feet
    [2,962 metres]) is the highest point in the range
    and in Germany.
     
    """
   
    
    private var numberOfImage = 5
    
    private let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    
    @State private var currentIndex = 0
    
    func previous() {
        
        withAnimation{
        currentIndex = currentIndex > 0 ?
            currentIndex - 1 : numberOfImage - 1
        }
    }
    
    func next(){
        withAnimation{
        currentIndex = currentIndex <
       numberOfImage ? currentIndex + 1 : 0
        }
    }
    
    var controls: some View {
         
        HStack{
            Button {
                previous()
                
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 10,height: 15)
            }
            
          Spacer()
                .frame(width: 80)
            
            Button {
               next()
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 10,height: 15)
                    
            }
        }//previous&next
        .foregroundColor(Color("primaryColor"))
      
        //for button colort
        
    }
    
    var body: some View {
    //    VStack{
            
            
            
       NavigationView{
           
        VStack{
            
            
        VStack(spacing: 40){
            Text("Bavarian Alps")
                .fontWeight(.bold)
                    .frame(width:353,
                            height:  .zero
                            ,alignment:
                            .leading)
                    .font(.title)
                            
/* Link(destination: URL(string: "https://www.google.com.sa/maps/place/جبال+الألب+البافارية%E2%80%AD/@47.5517347,11.0273143,12.9z/data=!4m13!1m7!3m6!1s0x479d01c5cf26da37:0x7012c3114174bf97!2z2KzYqNin2YQg2KfZhNij2YTYqCDYp9mE2KjYp9mB2KfYsdmK2Kk!3b1!8m2!3d47.5175925!4d10.9381827!3m4!1s0x479d01c5cf26da37:0x7012c3114174bf97!8m2!3d47.5175925!4d10.9381827?hl=ar")!,
    label: {
            Label (
            title: {
            Text("Location")},
                icon:{
                Image(systemName: "mappin.and.ellipse")}
                )
                .frame(width: 150, height: .zero,
                        alignment: .leading)
                .background(Color.blue)
                            })*/
    
    Link("Location", destination: URL(string: "https://www.google.com")!)
       
        .environment(\.openURL, OpenURLAction { url in
            print("Open \(url)")
            return .handled
        })
        .frame(width:353,
            height:  .zero,
            alignment: .leading)
        .padding(5)
    
        }//titel&loction
            .padding(.top, 60.0)
            
         /*   .frame(width:350 ,
                    height:300,
                   alignment:.topLeading)*/
            Divider()
        VStack {//texteditor
            ScrollView(  showsIndicators: true) {
            TextEditor(text: .constant(text))
                    .foregroundColor(.black)
                .background(.gray)
            } .frame(width: 353,
                    height: 200)
                // .background(.cyan)
                
            Divider()
                
        }
           
        VStack  { //tabbphotos
                 GeometryReader { proxy in
                  VStack{
                TabView{
                    ForEach(0..<numberOfImage)
                    {
                        num in
                        Image("\(num)")
                            .resizable()
                            .cornerRadius(8)
                            .scaledToFit()
                            //   .overlay(Color.black.opacity(0.4))
                            .tag(num)
                    }
                }.tabViewStyle(PageTabViewStyle())
                  .clipShape(RoundedRectangle(cornerRadius: 5))
            //   .padding()
                  .frame(width: proxy.size.width, height: proxy.size.height/1.1)
                         .onReceive(timer, perform: { _ in
                            next()
                         })
                      controls
                         
                     }//vstakTabViow
                    
                 }//geomatry
                  
              }//tabbphotos
            
       }
           
        .navigationTitle("Post")
        .navigationBarTitleDisplayMode(.inline)
        
         //bigvstak
        //.navigationBarItems(leading: Image(systemName: "chevron.backward"))
        //.padding()
        }//navegitionview
        }
        }
        
    







struct postpage_Previews: PreviewProvider {
    static var previews: some View {
        postpage()
    }
}
