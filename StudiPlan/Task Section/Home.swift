//
//  Home.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/25/24.
//

import SwiftUI

    

struct Home: View {
    @State var currentDate: Date = Date()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 20){
                
                CustomDatePicker(currentDate: $currentDate)
                
            }
        }
    }
}

#Preview {
    Home()
}
