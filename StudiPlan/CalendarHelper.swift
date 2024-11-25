//
//  CalendarHelper.swift
//  StudiPlan
//
//  Created by Mohamad Daniar on 11/24/24.
//

import Foundation

class CalendarHelper{
    let calender = Calendar.current
    let dateFormatter = DateFormatter()
    
    func monthYearString(_ date: Date) -> String{
        dateFormatter.dateFormat="LLL yyyy"
        return dateFormatter.string(from: date)
    }
    func plusMonth(_ date: Date) -> Date {
        return calender.date(byAdding: .month, value: 1, to: date)!
    }
    func minusMonth(_ date: Date) -> Date {
        return calender.date(byAdding: .month, value: -1, to: date)!
    }
}
