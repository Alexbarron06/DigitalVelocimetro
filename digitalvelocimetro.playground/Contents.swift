//: Playground - noun: a place where people can play

import UIKit

//: Playground - Engine, alex barron


import UIKit




enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}
class Auto
{
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var leyenda : String
        
        switch self.velocidad {
            
            
            
        case Velocidades.Apagado:
            self.velocidad = .Apagado
            leyenda = "Apagado"
            self.velocidad = .VelocidadBaja
            leyenda = "Velocidad Baja"
        case Velocidades.VelocidadBaja:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Media"
        case Velocidades.VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyenda = "Velocidad Alta"
        case Velocidades.VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Media"
            
        }
        return (self.velocidad.rawValue, leyenda)
    }
}
var auto = Auto(velocidad: .Apagado)
print((20, "Apagado"))


for i in 1...20{
    
    
    print(auto.cambioDeVelocidad())
    
}
