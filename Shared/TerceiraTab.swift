//
//  TerceiraTab.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct TerceiraTab: View {
    
    @StateObject var viewModel = ProjectsModel()
    
    let rows = [
        GridItem(.fixed(1)),
        GridItem(.fixed(1))
    ]
    
    var body: some View {
        
        NavigationView {
                
                List(viewModel.projects){ card in
                    
                    if(card.favorito){
                        
                        VStack{
                            
                            NavigationLink (destination: InsideProject(card: card)){
                                
                                HStack(alignment: .top) {
                                    
                                    Image(card.iconImg).aspectRatio(contentMode: .fit)
                                    
                                    VStack(alignment: .leading, spacing: 0.0){
                                        
                                        Text(card.title)
                                            .fontWeight(.regular)
                                            .multilineTextAlignment(.leading)
                                            .padding([.leading, .bottom])
                                        
                                        Text(card.textPreview)
                                            .font(.caption)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.leading)
                                            .padding(.leading)
                                        
                                    }
                                    
                                }
                                
                            }
                            .padding(.leading)
                            .navigationBarHidden(true)
                            
                        }
                    }else {
                        
                        EmptyView()
                    }
                    
                }.padding(.vertical, 2.0)
                
            }
            
        }
        
    }

struct TerceiraTab_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
