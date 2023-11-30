//
//  AddView.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/27/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.054, brightness: 0.877))
                    .cornerRadius(10)
                
                Button("Save".uppercased()) {
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .frame(height: 55)
                
                
            }
            .padding(14)
        }
            .navigationTitle("Add an Item")
        }
    }
    
    struct AddView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                AddView()
            }
        }
    }

