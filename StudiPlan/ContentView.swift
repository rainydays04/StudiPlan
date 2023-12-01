//
//  ContentView.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("StudiPlan")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.639, saturation: 0.638, brightness: 0.493))
                    NavigationLink(destination: assignments()) {
                        Text("Assignments")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0))
                            .cornerRadius(8)
                            .padding()
                    }
                        NavigationLink(destination: Calculator()) {
                            Text("Caluclator")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0))
                                .cornerRadius(8)
                                .padding()
                            
                        }
                    NavigationLink(destination: studyTimer()) {
                        Text("Study Timer")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0))
                            .cornerRadius(8)
                            .padding()
                        
                    }
                    NavigationLink(destination: reasources()) {
                        Text("Reasources")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color(red: 121/255.0, green: 135/255.0, blue: 184/255.0))
                            .cornerRadius(8)
                            .padding()
                        
                    }
                    
                }
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
