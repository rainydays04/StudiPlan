//
//  Planner.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/24/24.
//

import SwiftUI

struct Planner: View {
    @EnvironmentObject var dateHolder: DateHolder
    var body: some View {
        DataScrollerView()
            .environmentObject(dateHolder )
            .padding()
    }
}

#Preview {
    Planner()
}
