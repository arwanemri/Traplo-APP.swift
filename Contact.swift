//CLASS







//  Contact.swift
//  sign up
//
//  Created by arwa ghazi alnemari on 14/07/1443 AH.
//
import Foundation
import SwiftUI

struct Contact: Identifiable {
    let imageName: String
    let name: String
    let id = UUID()
}

let contacts = [
    Contact(imageName: "Ham Chuwon", name:"ham Chuwon"),
    Contact(imageName: "Svyatoslav Taushev", name:"svyatoslav Taushev"),
    Contact(imageName: "Salma Fonseca", name:"salma Fonseca"),
    Contact(imageName: "Peter Taylor", name:"peter Taylor"),
    Contact(imageName: "Darren Adams" ,name:"darren Adams"),
    Contact(imageName: "Jel Chibuzo", name:"jel Chibuzo"),
    Contact(imageName: "Freddy jon", name:"freddy jon"),
    Contact(imageName: "Belen Lyon", name:"belen Lyon"),
    Contact(imageName: "Jonathan Stam", name:"jonathan Stam"),
    Contact(imageName: "Wolf Ham", name:"wolf Ham"),
    Contact(imageName: "Anselmo", name:"anselmo"),
    Contact(imageName: "Juliet Robin", name:"juliet Robin"),
    Contact(imageName: "Sally Nile", name:"sally Nile"),
    
]
