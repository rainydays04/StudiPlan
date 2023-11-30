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
            ItemModel(title: "Assignment 1", isCompleted: false),
            ItemModel(title: "Assignment 2", isCompleted: true),
            ItemModel(title: "Assignment 3", isCompleted: false)
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
    func updateItem(item: ItemModel){
     
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
}
