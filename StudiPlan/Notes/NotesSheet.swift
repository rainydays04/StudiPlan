//
//  NotesSheet.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/21/24.
//

extension View {
    @ViewBuilder public func hidden(_ shouldHide: Bool) ->
    some View{
        switch shouldHide{
        case true: self.hidden()
        case false: self
        }
    }
}
import SwiftUI

struct NotesSheet: View {
    @State private var title = ""
    @State private var description = ""
    @FocusState private var isDescriptionFocused: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Title", text: $title)
                    .font(.headline)
                    .padding()
                Divider()
                    .padding()
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $description)
                        .padding(.horizontal)
                        .focused($isDescriptionFocused)
                    Text("Thoughts")
                        .fontWeight(.light)
                        .foregroundStyle(
                            .black
                            .opacity(0.25))
                        .padding(.horizontal)
                        .hidden(isDescriptionFocused)
                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .topBarLeading){
                    Button("Cancel"){}
                        .frame(width:100, height:40)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
        }
            .toolbar{
                ToolbarItemGroup(placement: .topBarTrailing){
                    Button(action: {}){
                        HStack{
                            Spacer()
                            Text("Save")
                        }
                    }
                        .frame(width:100, height:40)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
        }
        }
    }
}

#Preview {
    NotesSheet()
}
