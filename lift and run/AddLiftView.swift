//
//  AddLiftView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

struct AddLiftView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var name = ""
    @State private var sets = ""
    @State private var reps = ""
    @State private var weight = ""
    
    var body: some View {
        VStack{
            HStack{
                Button("Clear"){
                    clear()
                }
                Spacer()
                Button("Add"){
                    addLift()
                    clear()
                }
            }
        }
        ScrollView {
            VStack{
                AddLiftMetaData(name: $name, sets: $sets, reps: $reps, weight: $weight)
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
        AddLiftView()
    }
}
