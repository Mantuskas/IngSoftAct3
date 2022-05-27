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
        let expectedResult = 13.0
        
        //WHEN
        let sumarDosNumerosNaturales = sut.suma(num1: 10, num2: 3)
        
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedResult, "Deberia de devolver un \(expectedResult)")
        
    }
    
    func test_CalcularSuma_Incorrecta() {
        
        //GIVEN
        let expectedValue = 20.0
    
        //WHEN
        let result = sut.suma(num1: 10.0, num2: 1.0)
        //THEN
        XCTAssertTrue(result != expectedValue)

    }
    
    func test_CalcularResta() {
        
        //Given
        let expectedResult = 3.0
        
        //WHEN
        let sumarDosNumerosNaturales = sut.restar(num1: 5, num2: 2)
        
       //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedResult, "Deberia de devolver un \(expectedResult)")

    }
    
    func test_CalcularResta_Incorrecta() {
        //GIVEN
        let expectedValue = 30.0
    
        //WHEN
        let result = sut.restar(num1: 10.0, num2: 1.0)
        //THEN
        XCTAssertTrue(result != expectedValue, "Deberia de dar algo diferente a 30")

    }
    
    func test_CalcularMultiplicar() {
        
        //GIVEN
        let expectedResult = 25.0
        
        //WHEN
        let sumarDosNumerosNaturales = sut.multiplicar(num1: 5, num2: 5)
        
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedResult, "Deberia de devolver un \(expectedResult)")
        
    }
    
    func test_CalcularMultiplicacion_Incorrecta() {
        //GIVEN
        let expectedValue = 4.0
    
        //WHEN
        let result = sut.multiplicar(num1: 2.0, num2: 5.0)
        //THEN
        XCTAssertTrue(result != expectedValue, "Deberia devolver un algo diferente a 4")

    }
    
    func test_CalcularDivision() {
        
        //GIVEN
        let expectedResult = 5.0
        
        //WHEN
        let sumarDosNumerosNaturales = sut.dividir(num1: 15, num2: 3)
        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedResult, "Deberia de devolver un \(expectedResult)")
        
        
    }
    
    func test_CalcularDivision_Incorrecta() {
        //GIVEN
        let expectedValue = 3.0
    
        //WHEN
        let result = sut.dividir(num1: 21.0, num2: 6.0)
        //THEN
        XCTAssertTrue(result != expectedValue, "Deberia devolver un algo diferente a 3")

    }
    
    func test_RaizCuadrada() {
        
        //Given
        let expectedValue = 8.0
        
        //WHEN
        let sumarDosNumerosNaturales = sut.raizCuadrada(num: 64)

        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedValue, "Deberia de devolver un \(expectedValue)")
        
    }

    func test_exponencial () {
        
        //Given
        let expectedValue = 3125

        //WHEN
        let sumarDosNumerosNaturales = sut.exponencial(5, 5)

        //THEN
        XCTAssertEqual(sumarDosNumerosNaturales, expectedValue, "Deberia de devolver un \(expectedValue)")
    }
    
    func test_CalcularExponencial_Incorrecta() {
        //GIVEN
        let expectedValue = 3125
    
        //WHEN
        let result = sut.exponencial(5, 4)
        //THEN
        XCTAssertTrue(result != expectedValue, "Deberia devolver un algo diferente a 3125")

    }

}
