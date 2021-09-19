//
//  ContentView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(sortDescriptors: []) var lifts: FetchedResults<Lifts>
    
    @State private var tabSelection = 0
    
    var body: some View {

        
        VStack{
            NavigationView{
                NavigationLink(
                    destination: AddLiftView(),
                    label: {
                        Text("Add New Lift")
                    })
            }
            List {
                ForEach(lifts) { lift in
                    HStack{
                        Text(lift.name)
                        Spacer()
                        Image(systemName: "multiply.circle.fill").onTapGesture {
                            viewContext.delete(lift)
                            do {
                                try viewContext.save() //save any changes
                            }
                            catch {
                                // error with saving
                            }
                        }
                    }

                }
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
