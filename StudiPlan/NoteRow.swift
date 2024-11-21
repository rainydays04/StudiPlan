//
//  NoteRow.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/18/24.
//

import SwiftUI

struct NoteRow: View {
    let note: Note
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(note.title)
                Spacer()
                Image(systemName:"note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25,height: 30)
                    .foregroundColor(Color.purple)
                    .shadow(
                        color: Color.white,
                        radius:100)
            }
            .padding()
            Text(note.content)
                .font(.body)
                .lineLimit(1)
                .padding(.horizontal)
            
        }
        .frame(maxWidth: .infinity)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .shadow(radius: 2)
        )
        .padding(.horizontal)
        .padding(.vertical)
    }
}

#Preview {
    NoteRow(note: Note(title: "Day 1", description: "Journal thoughts", createdAt: Date()))
}
