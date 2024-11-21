//
//  Notes.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/20/24.
//

import Foundation

final class Note: Identifiable {
    var id = UUID()
    var title:String
    var description: String
    var createdAt: Date
    
    init(id:UUID = UUID(), title:String,
         description: String, createdAt:Date) {
         self.id = id
         self.title = title
         self.description = description
         self.createdAt = createdAt
    }
}
extension Note{
    static var mockData: [Note] {
        [
            Note(title: "Day 1", description: "Yap yap", createdAt: Date().addingTimeInterval(-10000)),
            Note(title: "Day 2", description: "meow", createdAt: Date().addingTimeInterval(-20000))
        ]
    }
}
