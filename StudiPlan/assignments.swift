//
//  assignments.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

struct assignments: View {
    
    @State var items: [String] = [
    "This is the first title",
    "This is the second",
    "Third"
    ]
    var body: some View {
        

        
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Assignments")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: Text("Destination"))
        )
    }
}
    struct assignments_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                assignments()
            }
        }
    }



