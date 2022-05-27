//
//  Act3GrupalTests.swift
//  Act3GrupalTests
//
//  Created by Mantas Jakstas on 27/5/22.
//

import XCTest
@testable import Act3Grupal

class Act3GrupalTests: XCTestCase {

    // SUT = System under test
    var sut: Calculadora!

    // Crearemos la instancia en cada test 
    override func setUp() {
        sut = Calculadora()
    }
    
    //Destruiremos la instancia en cada test para liberar memoria
    override func tearDown() {
        sut = nil
    }
    
    //Creamos el primer test de suma
    
    func test_CalcularSuma() {
        
        //GIVEN
        
        
        //WHEN
        let sumarDosNumerosNaturales = sut.suma(num1: 10, num2: 3)
        
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 13, "Deberia de devolver un 13")
        
    }
    
    func test_CalcularResta() {
        
        //Given
        
        
        //WHEN
        let sumarDosNumerosNaturales = sut.restar(num1: 5, num2: 2)
        
       //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 3, "Deberia de devolver un 3")

    }
    
    func test_CalcularMultiplicar() {
        
        //GIVEN
        
        
        //WHEN
        let sumarDosNumerosNaturales = sut.multiplicar(num1: 5, num2: 5)
        
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 25, "Deberia de devolver un 25")
        
    }
    
    func test_CalcularDivision() {
        
        //GIVEN
        
        
        //WHEN
        let sumarDosNumerosNaturales = sut.dividir(num1: 15, num2: 3)
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 5, "Deberia de devolver un 0")
        
        
    }
    
    func test_RaizCuadrada() {
        
        //Given
        
        
        //WHEN
        let sumarDosNumerosNaturales = sut.raizCuadrada(num: 64)

        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 8.0, "Deberia de devolver un 8.0")
        
    }

    func test_exponencial () {
        
        //Given
        

        //WHEN
        let sumarDosNumerosNaturales = sut.exponencial(5, 5)

        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, 3125, "Deberia de devolver un 3125")
    }

}
