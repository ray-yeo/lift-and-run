//
//  AddLiftMetaData.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

struct AddLiftMetaData: View {
    @Binding var name: String
    @Binding var sets: String
    @Binding var reps: String
    @Binding var weight: String
    
    var body: some View {
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
