//
//  CardInfo.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

class card_info: ObservableObject, Identifiable {
    
    var id: UUID = UUID()
    var addressStreet: String
    var addressCity: String
    var email: String
    var number: String
    var instagram: String
    var linkedin: String
    var fullText: String
    var iconImg: String
    var title: String
    var textPreview: String
    var imgPrev: [String]
    @Published var comments: [String]
    @Published var favorito: Bool
    
    init(addressStreet: String, addressCity: String, email: String, number: String, instagram: String, linkedin: String, fullText: String, iconImg: String, title: String, textPreview: String, imgPrev: [String], comments: [String], favorito: Bool) {
        
        self.addressStreet = addressStreet
        self.addressCity = addressCity
        self.email = email
        self.number = number
        self.instagram = instagram
        self.linkedin = linkedin
        self.fullText = fullText
        self.iconImg = iconImg
        self.title = title
        self.textPreview = textPreview
        self.imgPrev = imgPrev
        self.comments = comments
        self.favorito = false
        
    }
    
}
