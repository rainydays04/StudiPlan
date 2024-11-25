//
//  StudiPlanApp.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

/*
 
 */

struct StudiPlanApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        
        WindowGroup {
            let dateHolder = DateHolder()
            Planner()
                .environmentObject(dateHolder)
            NavigationView {
                ContentView()
            assignments()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
