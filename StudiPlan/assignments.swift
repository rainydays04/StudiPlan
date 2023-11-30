//
//  assignments.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

struct assignments: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
 
    
    var body: some View {
        
        
        
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                            
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Assignments")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
        
        
    }


}
    struct assignments_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                assignments()
            }
            .environmentObject(ListViewModel())
        }
    }

