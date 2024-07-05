//
//  File.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 29/6/24.
//

import Foundation

extension Date {
    static func from(yy year: Int, mm month:Int, dd day: Int, h hour: Int, minute: Int) -> Date {
        let dateComponents = DateComponents(calendar: Calendar.current, year: year, month: month, day: day, hour: hour, minute: minute)
        return Calendar.current.date(from: dateComponents)!
    }
}
    
