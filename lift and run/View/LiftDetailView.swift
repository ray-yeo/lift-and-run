//
//  LiftDetailView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

struct LiftDetailView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @Binding var tabSelection: Int


    var lift:Lifts
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Name: ")
                    Text(lift.name)
                }
                .padding(.vertical)
                HStack{
                    Text("Sets: ")
                    Text(lift.sets)
                }
                .padding(.vertical)

                HStack{
                    Text("Reps: ")
                    Text(lift.reps)
                }
                .padding(.vertical)

                HStack{
                    Text("Weight: ")
                    Text(lift.weight)
                }
                .padding(.vertical)

                HStack{
                    Text("Delete").foregroundColor(Color.red).onTapGesture {
                        tabSelection = Constants.liftsTab
                        viewContext.delete(lift)
                        do {
                            try viewContext.save()
                        }
                        catch {
                            
                        }
                    }
                    Image(systemName: "multiply.circle.fill")
                }
                .padding(.vertical)


            }
        }
    }
}

//struct LiftDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        LiftDetailView()
//    }
//}
