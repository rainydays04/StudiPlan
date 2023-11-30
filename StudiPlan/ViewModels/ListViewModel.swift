//
//  ListViewModel.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/29/23.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel]=[]
    
    
    init() {
    getItems()
    }
    func getItems(){
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second title!", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false)
        ]
            items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
