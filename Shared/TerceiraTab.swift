//
//  TerceiraTab.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct TerceiraTab: View {
    
    @ObservedObject var state : StateManager
    
    let rows = [
        GridItem(.fixed(1)),
        GridItem(.fixed(1))
    ]
    
    var body: some View {
        
        VStack{
            
            Text("Favoritos")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
            
            NavigationView {
                
                List(ProjectsModel.projects){ card in
                    
                    if(card.favorito){
                        
                        VStack{
                            
                            NavigationLink (destination: InsideProject(state: state, card: card)){
                                
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
                        
                    }
                    
                }.padding(.vertical, 2.0)
                
            }
            
        }
        
    }
    
}

struct TerceiraTab_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
