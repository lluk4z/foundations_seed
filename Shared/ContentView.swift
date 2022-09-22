//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ProjectsViewModel()
    
    
    
    let rows = [
            GridItem(.fixed(1)),
            GridItem(.fixed(1))
        ]
    var body: some View {
        VStack{
            Text("Seed").font(.title).fontWeight(.light).padding(.all, -8.0)
            List(viewModel.projects){ card in
            VStack{
            HStack(alignment: .top) {
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
                }
                
                
            }
            .padding(.leading)
                
                ScrollView(.horizontal) {
                            LazyHGrid(rows: rows, alignment: .center) {
                                ForEach(viewModel.projects) { card in
                                    HStack{
                                        Image(card.imgPrev[0]).resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 170, height: 170)
                                    Image(card.imgPrev[1])
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 170, height: 130)
                                    }
                                    .padding([.top, .leading], 2.0)
                                        
                                }
                            }
                            .frame(height: 150)
            }
            }
            .padding(.vertical, 2.0)
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
