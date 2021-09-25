//
//  HomeTabView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/24/21.
//

import SwiftUI


struct HomeTabView: View {
    @State private var tabSelection = 0
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            LiftsView()
                .tabItem{
                Text("Lifts")
            }.tag(Constants.liftsTab)
            
            AddLiftView(tabSelection: $tabSelection)
                .tabItem {
                Text("Add Lift")
            }.tag(Constants.addLiftsTab)
        }
    }
    
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
