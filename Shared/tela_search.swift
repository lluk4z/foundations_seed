//
//  tela_search.swift
//  seed_foundations
//
//  Created by Lucas Emanuel on 27/09/22.
//

import SwiftUI

struct tela_search: View {
    let pesquisas = card_categoria.listar()
    var body: some View {
        List(pesquisas) { pesquisa in
            HStack {
                Text(pesquisa.title)
            }
            
        }
    }
}

struct tela_search_Previews: PreviewProvider {
    static var previews: some View {
        tela_search()
    }
}
