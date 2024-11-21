//
//  MainNotes.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/20/24.
//

import SwiftUI

struct MainNotes: View {
    @State private var notes = Note.mockData
    @State private var isShowingSheet = false
    var body: some View {
        ScrollView{
            VStack{
                Text("Journal")
                    .font(.system(size: 40, weight: .bold))
                ForEach(notes) {note in
                    NoteRow(note: note)
                }
                
            }
            
        }
        .sheet(isPresented: $isShowingSheet){
            Text("Our bottom sheet")
        }
        .overlay(
            HStack{
                Button(action : {isShowingSheet = true}){
                    Image(systemName: "plus")
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
            } .padding(),
            alignment: .bottomTrailing
            
        )
    }
}
#Preview {
    MainNotes()
}
