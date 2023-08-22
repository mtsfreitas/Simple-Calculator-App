//
//  SimpleCalculatorTests.swift
//  SimpleCalculatorTests
//
//  Created by Matheus Freitas Martins on 20/08/23.
//

import XCTest
@testable import SimpleCalculator

final class SimpleCalculatorTests: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        // inicializando a instância da calculadora antes de cada teste e no método
        calculator = Calculator()
    }
    
    override func tearDown() {
        // liberando a instância após cada teste.
        calculator = nil
        super.tearDown()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() {
        XCTAssertEqual(calculator.performOperation(lhs: 3, rhs: 4, operation: "+"), 7)
    }
    
    func testSubtraction() {
        XCTAssertEqual(calculator.performOperation(lhs: 10, rhs: 5, operation: "-"), 5)
    }
    
    func testMultiplication() {
        XCTAssertEqual(calculator.performOperation(lhs: 6, rhs: 8, operation: "*"), 48)
    }
    
    func testDivision() {
        XCTAssertEqual(calculator.performOperation(lhs: 20, rhs: 4, operation: "/"), 5)
    }
    
    func testDivisionByZero() {
        XCTAssertEqual(calculator.performOperation(lhs: 10, rhs: 0, operation: "/"), Double.infinity)
    }
    
    func testDefault() {
        XCTAssertEqual(calculator.performOperation(lhs: 10, rhs: 10, operation: ""), 0)
    }
    
    func testPerformanceAddition() throws {
        let lhs = 10.0
        let rhs = 5.0
        let operation = "+"
        
        self.measure {
            _ = calculator.performOperation(lhs: lhs, rhs: rhs, operation: operation)
        }
    }
    
    func testPerformanceSubtraction() throws {
        let lhs = 10.0
        let rhs = 5.0
        let operation = "-"
        
        self.measure {
            _ = calculator.performOperation(lhs: lhs, rhs: rhs, operation: operation)
        }
    }
    
    func testPerformanceMultiplication() throws {
        let lhs = 10.0
        let rhs = 5.0
        let operation = "*"
        
        self.measure {
            _ = calculator.performOperation(lhs: lhs, rhs: rhs, operation: operation)
        }
    }
    
    func testPerformanceDivision() throws {
        let lhs = 10.0
        let rhs = 5.0
        let operation = "/"
        
        self.measure {
            _ = calculator.performOperation(lhs: lhs, rhs: rhs, operation: operation)
        }
    }

}
