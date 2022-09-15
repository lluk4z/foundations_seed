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
    
    static func listarTodos() -> [card_info] {
        return [
            card_info(iconImg: "logoApple", title: "Academy - UFPE", textPreview: "A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor....",
                      imgPrev: ["img01", "img02"]),
            card_info(iconImg: "logoLady", title: "PyLadies", textPreview: "A pyLadies é uma comunidade com foco em diversidade em empoderamento feminino que busca trazer...",
                      imgPrev: ["img03", "img04"])
        ]
    }
    
}

@main
struct seed_foundationsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
