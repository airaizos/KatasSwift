import Foundation

//Dado un mes y un año, determina cuantos días de la semana hay en ese mes. Lunes, miércoles y viernes de julio
extension Date {
    static func from(year: Int, month:Int, day: Int, hour: Int, minute: Int) -> Date {
        let dateComponents = DateComponents(calendar: Calendar.current, year: year, month: month, day: day, hour: hour, minute: minute)
        return Calendar.current.date(from: dateComponents)!
    }
}

enum ErrorDateUtilities: Error {
    case badDiaSemana, badAño, badMes, badDate
    
    var description: String {
        switch self {
        case .badDiaSemana: return "El dia de la semana debe ser entre 1 (Doming) y 7 (Sábado)"
        case .badAño: return "Los años válidos son entre 1970 y 2100"
        case .badMes: return "Los meses deben ser entre 1 (Enero)  y 12 (Diciembre)"
        case .badDate:  return "Error al generar fechas"
        }
    }
}


final class DateUtilities {
    
    func cantidadDeDiasDe(diaSemana: Int, enAño: Int, yMes: Int) -> Int {
        let calendar = Calendar.current
        let dia = DateComponents(weekday: diaSemana)
        var cuenta = 0
        for i in 1...31 {
            let component = DateComponents(year: enAño, month: yMes, day: i)
            let inicio = calendar.date(from: component)!
            
            if calendar.date(inicio, matchesComponents: dia) {
                cuenta += 1
            }
        }
        return cuenta
    }
    
    
    func cantidadDeDiasDe(diaSemana: Int, entre fechaInicial: Date, fechafinal: Date) throws -> Int {
        guard fechaInicial <= fechafinal  else { throw ErrorDateUtilities.badDate }
        
        var fecha = fechaInicial
        let calendar = Calendar.current
        let diaSem = DateComponents(weekday: diaSemana)
        var cuenta = 0
        
        while fechafinal > fecha {
            if calendar.date(fecha, matchesComponents: diaSem) {
                cuenta += 1
            }
            
            guard let new = calendar.date(byAdding: .day, value: 1, to: fecha) else { throw ErrorDateUtilities.badDate }
            
            fecha = new
        }
        return cuenta
    
    }
}

let utilities = DateUtilities()
let fechaInicial = Date.from(year: 2024, month: 6, day: 1, hour: 22, minute: 00)
let fechaFinal = Date.from(year: 2024, month: 8, day: 31, hour: 22, minute: 0)
utilities.cantidadDeDiasDe(diaSemana: 1, enAño: 2024, yMes: 8)
try utilities.cantidadDeDiasDe(diaSemana: 1, entre: fechaInicial, fechafinal: fechaFinal)
