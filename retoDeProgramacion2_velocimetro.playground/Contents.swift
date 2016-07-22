//: Velocimetro

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 150
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var estadoNumerico = 0
        var imprimeVelocidad = ""
        
        switch velocidad{
        case .Apagado:
            estadoNumerico = velocidad.rawValue
            velocidad = .VelocidadBaja
            imprimeVelocidad = "Apagado"
        case .VelocidadBaja:
            estadoNumerico = velocidad.rawValue
            velocidad = .VelocidadMedia
            imprimeVelocidad = "Velocidad baja"
        case .VelocidadMedia:
            estadoNumerico = velocidad.rawValue
            velocidad = .VelocidadAlta
            imprimeVelocidad = "Velocidad media"
        case .VelocidadAlta:
            estadoNumerico = velocidad.rawValue
            velocidad = .VelocidadMedia
            imprimeVelocidad = "Velocidad alta"
                }
        
        let regreso = (estadoNumerico, imprimeVelocidad)
        return regreso
        
    }
}

var auto = Auto()
for i in 1...20{
let result = auto.cambioDeVelocidad()
print("\(result.actual), \(result.velocidadEnCadena)")
}