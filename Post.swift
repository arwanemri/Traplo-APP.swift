//CLASS



//  Post.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//

import SwiftUI

import Foundation
class Post : ObservableObject  {

    var image: String
    var username: String
    var location: String
    var views: String
    
    
    init(image: String,username: String,location: String,views: String){
        self.image=image
        self.username=username
        self.location=location
        self.views=views
    }
    
    
    
}
