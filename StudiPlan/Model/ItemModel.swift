//
//  ItemModel.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/29/23.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
