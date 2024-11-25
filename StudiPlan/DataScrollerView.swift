//
//  DataScroller.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/24/24.
//

import SwiftUI

struct DataScrollerView: View {
    @EnvironmentObject var dateHolder: DateHolder
    var body: some View {
        HStack{
            Spacer()
            Button(action: previousMonth){
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(maxWidth: .infinity)
            Button(action: nextMonth){
                Image(systemName: "arrow.right")
                    .imageScale(.large)
                    .font(Font.title.weight(.bold))
            }
            Spacer()
        }
    }
    func previousMonth(){
        dateHolder.date = CalendarHelper().minusMonth(dateHolder.date)
    }
    func nextMonth(){
        dateHolder.date = CalendarHelper().plusMonth(dateHolder.date)
    }
}

#Preview {
    DataScrollerView()
}
