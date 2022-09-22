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

@main
struct seed_foundationsApp: App {
    var body: some Scene {
        WindowGroup {
            mainTabView()
        }
    }
}
