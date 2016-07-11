//: Playground - noun: a place where people can play

import UIKit

/*
 Generar un rango de 0 a 100, incluye el número 100 en el rango.
 - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
 
 - Si el número es par, imprime: # el número + “par!!!”
 
 - Si el número es impar, imprime: # el número + “impar!!!”
 
 - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
*/


for numero in 0...100 {
    if numero % 5 == 0 {
        print("\(numero) Bingo!!!")
    }
    if numero % 2 == 0 {
        print("\(numero) par!!!")
    }else {
        print("\(numero) impar!!!")
    }
    if numero >= 30 && numero <= 40 {
        print("\(numero) Viva Swift")
    }
}