//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    
    let cards = card_info.listarTodos()
    var body: some View {
        VStack{
        Text("Seed").padding()
        List(cards){ card in
            HStack {
                Image(card.iconImg)
                    .aspectRatio(contentMode: .fit)
                VStack{
                    Text(card.title)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .bottom, .trailing], 1.0)
                        
                    Text(card.textPreview)
                        .font(.caption)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                    
                    HStack{
                    Image(card.imgPrev[0]).padding()
                    Image(card.imgPrev[1])
                    }
                        
                }
                
            }
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
