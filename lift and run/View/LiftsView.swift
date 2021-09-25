//
//  LiftsView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/24/21.
//

import SwiftUI

struct LiftsView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: []) var lifts: FetchedResults<Lifts>
    
    @State private var tabSelection = 0
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Text("All Lifts")
                ScrollView{
                    VStack(alignment: .leading){
                        ForEach(lifts){ lift in
                            NavigationLink(
                                destination: LiftDetailView(tabSelection: $tabSelection, lift: lift),
                                label: {
                                    HStack{
                                        Text(lift.name)
                                            .fontWeight(.bold)
                                            .padding(.vertical)
                                    }
                                })
                        }
                    }
                }
            }
        }
    }
}


struct LiftsView_Previews: PreviewProvider {
    static var previews: some View {
        LiftsView()
    }
}
