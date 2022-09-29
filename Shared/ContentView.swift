//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    
    let pesquisas = card_categoria.listar()
    var body: some View {
        List(pesquisas) { pesquisa in
            HStack {
                Text(pesquisa.title)
                    .padding(.bottom, 1.0)
            }
            .padding(.bottom, 2.0)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
