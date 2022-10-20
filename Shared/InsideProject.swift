//
//  InsideProjectView.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct InsideProject: View {
    
    @ObservedObject var card: card_info
    @State var comentario = ""
 
//    static func fav() -> card_info {
//        return card_info(favorito: true)
//    }
    
    var body: some View {
        
        ScrollView(.vertical){
            
            VStack(alignment: .leading) {
                
                HStack{
                    
                    Image(card.iconImg)
                        .aspectRatio(contentMode: .fit)
                        .padding(.leading)
                    
                    Text(card.title)
                        .fontWeight(.semibold)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .bottom, .trailing], 1.0)
                        .padding(.bottom)
                    
                    Spacer()
                    
                    Button{
                        
                        card.favorito = true
                        
                    } label: {
                        
                        Image(systemName: "heart.fill")
                        
                    }
                    .accentColor(Color(red: 0.7039, green: 0.2304, blue: 0.3490))
                    .font(.title)
                    .padding([.bottom, .trailing])
                    
                }
                
                ScrollView(.horizontal) {
                    
                    HStack {
                        
                        ForEach(card.imgPrev, id: \.self) { img in
                            
                            Image(img)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        .padding([.top, .leading], 2.0)
                        .padding(.top)
                        
                    }
                    
                }
                .frame(height: 150)
                .padding([.leading, .trailing])
                
                Text("Contato")
                .font(.caption)
                .fontWeight(.bold)
                .padding([.leading, .top, .bottom])
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
                
                Text(card.email)
                .multilineTextAlignment(.leading)
                .padding(.leading)
                
                Text(card.number)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
                Text(card.instagram)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
                Text(card.linkedin)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
                Text("Endereço")
                .font(.caption)
                .fontWeight(.bold)
                .padding([.leading, .top, .bottom])
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
            
                Text(card.addressStreet)
                .multilineTextAlignment(.leading)
                .padding(.leading)
            
                Text(card.addressCity)
                .multilineTextAlignment(.leading)
                .padding([.leading, .bottom])
                
            }
            
            VStack(alignment: .leading){
                
                Text("Informações")
                .font(.caption)
                .fontWeight(.bold)
                .padding([.leading, .top, .bottom])
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
                
                Text(card.fullText)
                .multilineTextAlignment(.leading)
                .padding([.leading, .trailing])
            
                Text("Feedbacks")
                .fontWeight(.semibold)
                .font(.title)
                .padding()
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
                .frame(maxWidth: .infinity, alignment: .center)
                
            }
            
            VStack(alignment: .leading){
                
                ForEach(card.comments, id: \.self) { comment in
                    
                    HStack {
                        
                        Image("ellipse")
                        
                        Text(comment)
                        
                    }
                    .textFieldStyle(.roundedBorder)
                    .padding([.leading, .trailing])
                    
                }
                
                Text("Comente: ")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
                
                TextField("Comentario",text: $comentario )
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing])
                
            }
            
            Button("Enviar"){
                
                card.comments.insert(comentario, at: 0)
                comentario = ""
                
            }
            
        }
        
    }
    
}

struct InsideProject_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
