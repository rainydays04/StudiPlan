//
//  Notes.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/20/24.
//

import Foundation
import SwiftData


final class Note: Identifiable {
    var id = UUID()
    var title: String
    var content: String
    var createdAt: Date
    
    init(id: UUID = UUID(), title: String, description: String, createdAt: Date) {
        self.id = id
        self.title = title
        self.content = description
        self.createdAt = createdAt
    }
}

extension Note {
    static var mockData: [Note] {
        [
            Note(title: "Day 1", description: "Yap yap", createdAt: Date().addingTimeInterval(-10000)),
            Note(title: "Day 2", description: "meow", createdAt: Date().addingTimeInterval(-20000)),
            Note(title: "Day 3", description: "PLEASE", createdAt: Date().addingTimeInterval(-30000)),
            Note(title: "Day 4", description: "Stream Zoom by BV", createdAt: Date().addingTimeInterval(-40000)),
            Note(title: "Day 5", description: "This code makes me wanna crack smth", createdAt: Date().addingTimeInterval(-50000))
        ]
    }
}

