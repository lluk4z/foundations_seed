//
//  MainTabView.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct MainTabView: View {
    
    @ObservedObject var state = StateManager()
    
    var body:some View {
        
        VStack {
            
            Text("Seed")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
            
            TabView {
                
                PrimeiraTab(state: state).tabItem{
                    
                    Label("", systemImage: "house")
                    
                }
                SegundaTab(state: state).tabItem{
                    
                    Label("", systemImage: "magnifyingglass")
                    
                }
                TerceiraTab(state: state).tabItem{
                    
                    Label("", systemImage: "heart")
                    
                }
                
            }
            .accentColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
            
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
