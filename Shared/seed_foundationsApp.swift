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
    let imgPrev: [String] = ["img01", "img02"]
    
    static func listarTodos() -> [card_info] {
        return [
            card_info(iconImg: "logoApple", title: "Academy - UFPE", textPreview: "A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor....")
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
