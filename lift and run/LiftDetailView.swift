//
//  LiftDetailView.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

struct LiftDetailView: View {
    var lift:Lifts
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("Name: ")
                    Text(lift.name)
                }
                HStack{
                    Text("Sets: ")
                    Text(lift.sets)
                }
                HStack{
                    Text("Reps: ")
                    Text(lift.reps)
                }
                HStack{
                    Text("Weight: ")
                    Text(lift.weight)
                }
            }
        }
    }
}

//struct LiftDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        LiftDetailView()
//    }
//}
