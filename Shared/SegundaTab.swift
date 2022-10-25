//
//  SegundaTab.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct SegundaTab: View {
    
    @ObservedObject var state : StateManager
    
    let pesquisas = card_categoria.listar()
    
    let rows = [
        GridItem(.fixed(1)),
        GridItem(.fixed(1))
    ]
    
    var body: some View {
        
        NavigationView {
                
                List(pesquisas) { pesquisa in
                    
                    HStack {
                        
                        NavigationLink (destination: PrimeiraTab(state: state)){
                            
                            Text(pesquisa.title).font(.title)
                            
                        }
                        
                    }
                    .padding(.vertical, 100.0)
                    .padding(.leading, 55.0)
                    .padding(.trailing, 55.0)
                    .multilineTextAlignment(.center)
                    .background(
                        LinearGradient(
                            colors: [
                                pesquisa.cor,
                                Color(red: 0.2039, green: 0.7804, blue: 0.3490)],
                            startPoint: .top,
                            endPoint: .bottom))
                    
                }
                .padding(.vertical, 2.0)
                .navigationBarHidden(true)
                
            }
            
        }
        
    }

struct SegundaTab_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
