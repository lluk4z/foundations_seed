//
//  CategoriesModel.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct card_categoria: Identifiable {
    var id: UUID = UUID()
    var title: String
    var cor: Color
    
    static func listar() -> [card_categoria] {
        return [
            card_categoria(title: "Diversidade", cor: Color(red:0.204, green:0.78, blue:0.349)),
            card_categoria(title: "Social", cor: Color(red:0.141, green:0.541, blue:0.239)),
            card_categoria(title: "Trabalho", cor: Color(red:0.502, green:0.765, blue:0.569)),
            card_categoria(title: "Mulheres", cor: Color(red:0.204, green:0.78, blue:0.349))
            
        ]
    }
}
