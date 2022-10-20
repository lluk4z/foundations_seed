//
//  MainTabView.swift
//  seed_foundations
//
//  Created by Felipe Alexandre de França on 20/10/22.
//

import SwiftUI

struct MainTabView: View {
    
    var body:some View {
        
        TabView {
            
            PrimeiraTab().tabItem{
                
                Label("", systemImage: "house")
                
            }
            SegundaTab().tabItem{
                
                Label("", systemImage: "magnifyingglass")
                
            }
            TerceiraTab().tabItem{
                
                Label("", systemImage: "heart")
                
            }
            
        }
        .accentColor(Color(red: 0.2039, green: 0.7804, blue: 0.3490))
        
    }
    
}

struct MainTabView_Previews: PreviewProvider {

    static var previews: some View {

        MainTabView()

    }

}
