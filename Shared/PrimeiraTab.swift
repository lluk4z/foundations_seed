//
//  ContentView.swift
//  Shared
//
//  Created by Lucas Emanuel on 13/09/22.
//
import SwiftUI
 
struct PrimeiraTab: View {
    
    @ObservedObject var state : StateManager

    let rows = [
        GridItem(.fixed(1)),
        GridItem(.fixed(1))
    ]

    var body: some View {

        NavigationView {

                List(ProjectsModel.projects){ card in
                    
                    VStack{

                        NavigationLink (destination: InsideProject(state: state, card: card)){

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

    }

}
 
struct PrimeiraTab_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
