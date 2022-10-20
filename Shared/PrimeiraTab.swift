//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//
import SwiftUI
 
struct PrimeiraTab: View {

    @StateObject var viewModel = ProjectsModel()

    let rows = [
        GridItem(.fixed(1)),
        GridItem(.fixed(1))
    ]

    var body: some View {

        VStack{

            Text("Seed")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
                
            NavigationView {

                List(viewModel.projects){ card in
                    VStack{

                        NavigationLink (destination: InsideProject(card: card)){

                            HStack(alignment: .top) {

                                Image(card.iconImg)
                                    .aspectRatio(contentMode: .fit)
                                VStack(alignment: .leading, spacing: 0.0){

                                    Text(card.title)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .padding([.bottom, .leading])

                                    Text(card.textPreview)
                                        .font(.caption)
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading)
                                        .padding(.bottom)

                                }.multilineTextAlignment(.trailing)

                            }

                        }
                        .navigationBarHidden(true)

                        ScrollView(.horizontal) {

                            HStack {

                                ForEach(card.imgPrev, id: \.self) { img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)

                                }

                            }

                        }.frame(height: 200)

                    }

            }

            }

        }.padding(.bottom, 1.0)

    }

}
 
struct TerceiraTab: View {
    @StateObject var viewModel = ProjectsModel()
    
    
    
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
                NavigationLink (destination: InsideProject(card: card)){
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
            }
            .padding(.leading).navigationBarHidden(true)
                          
            }
            }
            .padding(.vertical, 2.0)
            }
        }
        }
    }
 
 
 
struct ProjetoView: View {
    
    @StateObject var viewModel = ProjectsModel()
    
    
    
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
 
//////////////////
///
struct ContentView2: View {
    
    @StateObject var viewModel = ProjectsModel()
    
    
    
    let rows = [
            GridItem(.fixed(1)),
            GridItem(.fixed(1))
        ]
    var body: some View {
        VStack{
            Text("Seed").font(.title).fontWeight(.light)
            
            List(viewModel.projects){ card in
            VStack{
                NavigationLink (destination: InsideProject(card: card)){
            HStack(alignment: .top) {
                Image(card.iconImg)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading, spacing: 0.0){
                    Text(card.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding([.bottom, .leading])
                       
                        
                    Text(card.textPreview)
                        .font(.caption)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.leading)
                        .padding(.bottom)
                }.multilineTextAlignment(.trailing)
                
            }
        }
            
                
                ScrollView(.horizontal) {
                            HStack {
                                ForEach(card.imgPrev, id: \.self) { img in
                                    Image(img)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        
                                        
 
                                    }
                                    
                                        
                                }
                            }
                            .frame(height: 200)
                    }
                
                }
            
            }.navigationBarHidden(true)
            
            
        
       
        }
    }
 
struct PrimeiraTab_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
