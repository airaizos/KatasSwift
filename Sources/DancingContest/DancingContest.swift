//
//  DancingContest.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 7/7/24.


/// #Kata: Dancing Contests
///## Descripción
/// La escuela de baile **Dynamic Dispatch** que acaba de cumplir su X aniversario y quiere celebrar organizando varios concursos de baile. Necesitan estimar la duración del concurso con base a lo siguiente: El concurso tiene una fecha y hora de incio. El concurso puede prolongarse durante varios días si fuese necesario, pero siempre con una duración máxima por día, al terminarse esa duración, el concurso se detiene hasta la misma hora de la fecha de inicio del día siguiente. Las tandas tienen una duración determinada y tras la cual se eliminan número predeterminado de parejas, y la siguiente tanda comienza de inmediato, sin pausa alguna, tras la cual se eliminan más parejas. Cada ciertos número de minutos hay un descanso de una duración predeterminada, tras el cual se reinician las tandas.
///
/// Las eliminatorias cambian al llegar a las últimas 7 parejas, las cuales después de cada tanda se elimina una a una. La pareja ganadora, la última se queda bailando una tanda más antes de dar por finalizado el concurso.
///
/// Hay que tener en cuenta las siguientes consideraciones:
///  * En caso de que haya parejas impares, se redondea hacia arriba.
///  * El descanso se inicia al terminar la tanda en la que coincidan o se sobrepasen los minutos del periodo de baile.
///  * La duración máxima por día contabiliza el tiempo de las tandas y los descansos.
///  * Las rondas finales siempre comienzan con 7 parejas ,a partir de ese momento el concurso ya no se pospone al día sigueinte, se debe terminar ese día.
///  * Después de la eliminación de la cuarta pareja y toca descanso, será el último descanso que se tome.
///
/// Las parejas eliminadas por tandas siempre será menor que el total de parejas.
///  El total de parejas siempre será mayor a 3
///  El periodo de baile siempre será mayor a la duración de la tanda
///  La duración del descanso y de la tanda siempre será mayor a 1 min
///  La duracion por día siempre será mayor al periodo de baile
///  La hora de incio más la duración y minutos extras, siempre será menor a las 23:59 del mismo día.
///
// Ejemplo 1:
// Concurso de Verano: El concurso de verano inicia el 5 de Julio del 2024 a las 10:00h. Participarán un total de 50 parejas, de las cuales se irán eliminando 7 parejas en cada tanda. La duración de la tanda es de 7 minuto. Cada 50 minutos de baile hay un descanso de 14 min. Y la duración por día es de 5 horas, si es necesario se pausará el concurso hasta el día siguiente a la misma hora de incio.
//
//  Input:
//  Fecha inicio: 5 Julio 2024 10:00
//  Total parejas: 50
//  Parejas eliminadas por tanda: 7
//  Duración tanda: 7 (min)
//  Duración baile: 50 (min)
//  Duración descanso: 14 (min)
//  Duración por dia 300 (min)
//
//  Output:
//  Fecha finalización: 5 Julio 11:52
//
//  Ejemplo 2:
//  Fecha inicio: 5 Julio 2024 10:00
//  Total parejas: 340
//  Parejas eliminadas por tanda: 30
//  Duración tanda: 4 (min)
//  Duración baile: 90 (min)
//  Duración descanso: 7 (min)
//  Duración por dia 340 (min)
//
//  Output:
//  Fecha finalización: 5 Julio 11:16

///## Instrucciones
///         Encontrarás el `struct Concurso` que incluye todas las propiedades necesarias para ejecutar la función.
///    Dentro de la clase `DancingContest` encontrarás la función `calculaFechaFin(concurso: Concurso)` que devuelve un tipo de dato `Date`
///     Añade tu código a la función
///     Puedes añadir las `extensions` y `structs` que consideres necesarios.
///     
///   # Tips
///##  ¿Has pensado en...
///         los casos en los que la tanda deja menos de 7 parejas para la eliminatoria
///    los casos en los que deja de haber descansos
///    los casos en los que se comienza al día siguiente y el periodo de baile se reinicia
///
///## Tests
///  Ejecuta los tests DancingContestTest y verifica que la función pasa todos los tests
/// Puedes crear casos extremos con los valores de inicialización del concurso,


import Foundation

struct Concurso {
    let fechaInicio: Date
    let totalParejas: Int
    let parejasEliminadasPorTanda: Int
    let duracionTanda: Int//minutos
    let periodoBaile: Int
    let duracionDescanso: Int //minutos
    let duracionPorDia: Int// minutos
}

final class DancingContest {
    func calculaFechaFin(concurso: Concurso) -> Date {
        //incluye tu código aquí
        Date.now
    }
}


