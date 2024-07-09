//
//  Date Extensions.swift
//
//
//  Created by Adrian Iraizos Mendoza on 29/6/24.
//

import Foundation

extension Date {
    static func from(year: Int, month:Int, day: Int, hour: Int, minute: Int) -> Date {
        let dateComponents = DateComponents(calendar: Calendar.current, year: year, month: month, day: day, hour: hour, minute: minute)
        return Calendar.current.date(from: dateComponents)!
    }
    
    func obtenerTiempo() -> Tiempo? {
        let components = Calendar.current.dateComponents([.hour,.minute], from: self)
        if let hour = components.hour, let minutes = components.minute {
            return Tiempo(h: hour, m: minutes)
        } else {
            return nil
        }
    }
    
    func setTime(_ time: Tiempo?) -> Date {
        
        guard let time, time.hora >= 0, time.hora <= 24, time.min >= 0, time.min <= 59 else { return self }
        
        var components = Calendar.current.dateComponents([.year, .month, .day], from: self)
        components.hour = time.hora
        components.minute = time.min
        return Calendar.current.date(from: components) ?? Date.now
    }
    
    func minutesDifference(to date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.minute], from: self, to: date)
        return components.minute ?? 0
    }
    
    func compare(with date2: Date) -> String {
        Calendar.current.compare(self, to: date2, toGranularity: .minute).rawValue == 0 ? "Igual" : "Diferente \(self.formatted(date: .long, time: .standard)) a resultado:  \(date2.formatted(date: .long, time: .standard))"
    }
}

struct Tiempo {
    let hora: Int
    let min: Int
    
    init(h: Int, m: Int) {
        hora = h
        min = m
    }
}
