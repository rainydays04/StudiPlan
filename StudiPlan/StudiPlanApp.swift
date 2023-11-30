//
//  StudiPlanApp.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

/*
 
 */
@main
struct StudiPlanApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            NavigationView {
            assignments()
            }
            .environmentObject(listViewModel)
        }
    }
}
