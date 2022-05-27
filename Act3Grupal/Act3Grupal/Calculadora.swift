//
//  Calculadora.swift
//  Act3Grupal
//
//  Created by Mantas Jakstas on 27/5/22.
//

import Foundation

class Calculadora {
    
    func suma(num1: Double, num2: Double) -> Double {
        num1 + num2
    }
    
    func restar(num1: Double, num2: Double) -> Double {
        num1 - num2
    }
    
    func multiplicar(num1: Double, num2: Double) -> Double {
        num1 * num2
    }
    
    func dividir(num1: Double, num2: Double) -> Double {
        num1 / num2
    }
    
    func raizCuadrada(num:Int)-> Double {
        var x1:Double = dividir(num1: (Double(num) * 1.0), num2: 2);
        var x2:Double = suma(num1: x1, num2: (Double(num) / x1)) / 2;
        while(abs(restar(num1: x1, num2: x2)) >= 0.0000001){
            x1 = x2;
            x2 = (suma(num1: x1, num2: (Double(num) / x1)) / 2);
        }
        return Double(x2);
    }

    func exponencial(_ x: Int, _ y: Int) -> Int {
        var result = 1
        for i in 0..<y {
            result *= x
        }
        return result
    }
    
}
