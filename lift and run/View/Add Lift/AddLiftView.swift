//
//  AddLiftView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

struct AddLiftView: View {
    
    // Tab selection
    @Binding var tabSelection: Int
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var name = ""
    @State private var sets = ""
    @State private var reps = ""
    @State private var weight = ""
    
    var body: some View {
        VStack{
            HStack{
                Button("Clear/Back"){
                    clear()
                    tabSelection = Constants.liftsTab
                }
                Spacer()
                Button("Add"){
                    addLift()
                    clear()
                    tabSelection = Constants.liftsTab
                }
            }
            ScrollView {
                
                VStack{
                    
                    Group{
                        HStack {
                            Text("Name: ").bold()
                            TextField("Bench Press", text:$name)
                        }
                        HStack {
                            Text("Sets: ").bold()
                            TextField("3", text:$sets)
                        }
                        HStack {
                            Text("Reps: ").bold()
                            TextField("10", text:$reps)
                        }
                        HStack {
                            Text("Weight: ").bold()
                            TextField("135", text:$weight)
                        }
                    }
                }
            }
        }
        
    }
    
    private func clear() {
        name = ""
        sets = ""
        reps = ""
        weight = ""
    }
    
    private func addLift(){
        let lift = Lifts(context: viewContext)
        lift.id = UUID()
        lift.name = name
        lift.sets = sets
        lift.reps = reps
        lift.weight = weight
        // Save to core data
        do {
            // Save the recipe to core data
            try viewContext.save()
            
            // Switch the view to list view
        }
        catch {
            // Couldn't save the recipe
        }
        
    }
}

struct AddLiftView_Previews: PreviewProvider {
    static var previews: some View {
        AddLiftView(tabSelection:Binding.constant(Constants.addLiftsTab))
    }
}
