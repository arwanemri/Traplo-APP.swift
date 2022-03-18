//
//  info.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 15/07/1443 AH.
//
import Foundation
import SwiftUI

struct info: Identifiable {
    let imageName: String
    let name: String
    let date: String
    let id = UUID()
}

let infor =

[
    info(imageName: "01", name: "Rockss", date: "5:44 pm" ),
    info(imageName: "02", name: "Explo_Lovers", date: "1:39 pm"),
    info(imageName: "03", name: "GoTOgather", date: "Yesterday" ),
    info(imageName: "04", name: "The brilliants ", date: "Satarday" ),
    info(imageName: "05", name: "nutural lovers", date: "12/2/2022"),
    info(imageName: "06", name: "skkkyyy", date: "5/2/2022")
]
//___________________________________



struct allgroup : Identifiable
{
    
    let imageName1: String
    let grpname: String
 
    let id = UUID()
    
    
}

let allgroup1 =
[

    allgroup(imageName1: "001", grpname: "Travel more"),
    allgroup(imageName1: "002", grpname: "Besties Who Travel"),
    allgroup(imageName1: "003", grpname: "Up In The Clouds"),
    allgroup(imageName1: "004", grpname: "Ready, Jetset, Go"),
    allgroup(imageName1: "005", grpname: "All We Do Is Travel "),
    allgroup(imageName1: "0011", grpname: "London Is Calling"),
    allgroup(imageName1: "007", grpname: "Living For Adventures"),
    allgroup(imageName1: "008", grpname: "My Heart's In Australia"),
    allgroup(imageName1: "009", grpname: "Paradise Found Here"),
    allgroup(imageName1: "0010", grpname: "Ticket To Paradise"),
    allgroup(imageName1: "0011", grpname: "When In Rome"),
    
]




