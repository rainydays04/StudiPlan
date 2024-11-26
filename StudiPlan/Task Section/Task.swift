//
//  Task.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/25/24.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int)->Date{
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}

var tasks: [TaskMetaData] = [
    TaskMetaData(task: [
        Task(title:"Go to lab"),
        Task(title:"AP Stats EC")
    ], taskDate: getSampleDate(offset: 1)),
    TaskMetaData(task: [
        Task(title:"Call Lillian"),
        Task(title:"Practice ending movement"),
        Task(title:"Study Chinese")
    ], taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task: [
        Task(title:"Practice with nunchucks"),
        Task(title:"Review Koryo poomsae")
    ], taskDate: getSampleDate(offset: -8))
]
