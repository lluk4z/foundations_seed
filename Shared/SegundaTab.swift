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
                        
                        NavigationLink (destination: PrimeiraTab(state: state, filtro: pesquisa.title)){
                            
                            Text(pesquisa.title)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                            
                        }
                        
                    }
                    .padding(.vertical, 50.0)
                    .padding(.leading, 55.0)
                    .padding(.trailing, 55.0)
                    .multilineTextAlignment(.center)
                    .background(pesquisa.cor)
                    .cornerRadius(23)
                    
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
