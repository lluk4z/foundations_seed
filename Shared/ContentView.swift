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
            NavigationView {
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
                            HStack {
                                ForEach(card.imgPrev, id: \.self) { img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 200, height: 170)

                                }
                                    .padding([.top, .leading], 2.0)
                                        
                                }
                            }
                            .frame(height: 150)
            }
                
            }
            }
            .padding(.vertical, 2.0)

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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct mainTabView: View {
    var body:some View {
        TabView {
            ContentView().tabItem{
                Image("home")
            }
            SegundaTab().tabItem{
                Image("lupa")
            }
            TerceiraTab().tabItem{
                Image("star")
            }
        }
    }
}


struct SegundaTab: View {
    let pesquisas = card_categoria.listar()
        var body: some View {
            List(pesquisas) { pesquisa in
                HStack {
                    Text(pesquisa.title)
                }
                
            }.padding(.vertical, 2.0)
        }
}


struct card_categoria: Identifiable {
    var id: UUID = UUID()
    let title: String
    let cor: String
    
    static func listar() -> [card_categoria] {
        return [
        card_categoria(title: "Diversidade", cor: "Green"),
        card_categoria(title: "Social", cor: "Blue")
        ]
    }
}


struct TerceiraTab: View {
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
                          
            }
            }
            .padding(.vertical, 2.0)
            
        }
        }
    }



struct ProjetoView: View {
    
    @StateObject var viewModel = ProjectsViewModel()
    
    
    
    let rows = [
            GridItem(.fixed(1)),
            GridItem(.fixed(1))
        ]
    var body: some View {
        VStack{
            Text("Seed").font(.title).fontWeight(.light).padding(.all, -8.0)
            List(viewModel.projects){ card in
            
                ScrollView(.horizontal) {
                            HStack {
                                ForEach(card.imgPrev, id: \.self) { img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 200, height: 170)

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
    
    

