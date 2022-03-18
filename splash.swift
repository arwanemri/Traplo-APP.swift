//
//  splash.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 15/07/1443 AH.
//

import SwiftUI

struct splash: View {
    @State var isActive:Bool=false
    
    var body: some View {
        VStack{
        if isActive{
         login()
        }else{
                    Image("logo1")
                        .resizable()
                        .aspectRatio(contentMode:.fit )
                        .frame(width: 200, height: 200)
                        .scaledToFit()
                        .clipShape(Circle())
            
       
        }
        
        } .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.4){
                    withAnimation{
                    self.isActive=true
                      
                    }
                }
            }
            
            
    }

}

