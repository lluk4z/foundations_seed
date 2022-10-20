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
            card_categoria(title: "Diversidade", cor: Color.red),
            card_categoria(title: "Social", cor: Color.yellow),
            card_categoria(title: "Trabalho", cor: Color.blue)
        ]
    }
}
