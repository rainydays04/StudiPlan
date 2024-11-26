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
            .padding(.vertical)
        }
        .safeAreaInset(edge: .bottom){
            HStack{
                Button{
                    
                } label: {
                    Text("Add Task")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0),in: Capsule())
                }
                Button{
                    
                } label: {
                    Text("Add Reminder")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0),in: Capsule())
                }
            }
            .padding(.horizontal)
            .padding(.top,10)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    Home()
}
