//
//  seed_foundationsApp.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//

import SwiftUI

struct card_info: Identifiable {
    var id: UUID = UUID()
    let iconImg: String
    let title: String
    let textPreview: String
    let imgPrev: [String]
    
}

struct card_categoria: Identifiable {
    var id: UUID = UUID()
    let title: String
    let cor: String
    
    static func listar() -> [card_categoria] {
        return [
        card_categoria(title: "Diversidade", cor: "Green"),
        card_categoria(title: "Social", cor: "Blue")
        ]
    }
}

struct seed_foundationsApp: App {
    var body: some Scene {
        WindowGroup {
            mainTabView()
        }
    }
}
