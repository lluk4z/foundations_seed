//
//  ProjectsViewModel.swift
//  seed_foundations
//
//  Created by Gislayne Vitorino dos Santos Silva on 22/09/22.
//

import SwiftUI

class ProjectsViewModel: ObservableObject {
    @Published var projects = [
        
        card_info(iconImg: "logoApple", title: "Academy - UFPE", textPreview: "A Apple Developer Academy é um projeto de capacitação criado em parceria entre o Centro de Infor....",
                  imgPrev: ["img01", "img02"]),
        card_info(iconImg: "logoLady", title: "PyLadies", textPreview: "A pyLadies é uma comunidade com foco em diversidade em empoderamento feminino que busca trazer...",
                        imgPrev: ["img03", "img04"])
    
  
            
    ]
}
