//
//  Act3GrupalTests.swift
//  Act3GrupalTests
//
//  Created by Mantas Jakstas on 27/5/22.
//

import XCTest
@testable import Act3Grupal

class Act3GrupalTests: XCTestCase {

    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    //Creamos el primer test de suma
    
    func test_CalcularSuma() {
        
        //GIVEN
        let calculadora = Calculadora()
        
        //WHEN
        let sumarDosNumerosNaturales = calculadora.suma(num1: 10, num2: 3)
        
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 13, "Deberia de devolver un 13")
        
    }
    
    func test_CalcularResta() {
        
        //Given
        let calculadora = Calculadora()
        
        //WHEN
        let sumarDosNumerosNaturales = calculadora.restar(num1: 5, num2: 2)
        
       //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 3, "Deberia de devolver un 3")

    }

}
