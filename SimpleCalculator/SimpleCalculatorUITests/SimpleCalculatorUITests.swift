//
//  SimpleCalculatorUITests.swift
//  SimpleCalculatorUITests
//
//  Created by Matheus Freitas Martins on 20/08/23.
//

import XCTest

final class SimpleCalculatorUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Inicializa a aplicação antes de cada teste
        app = XCUIApplication()
        app.launch()
        
    }
    
    override func tearDownWithError() throws {
        // Encerra a aplicação após cada teste
        app.terminate()
    }
    
    func testUpdateResultLabelNormalScenario() {
        
        let app = XCUIApplication()
        let firstNumberTextField =  app.textFields["Digite o primeiro número"]
        firstNumberTextField.tap()
        firstNumberTextField.typeText("10")
        
        let secondNumberTextField = app.textFields["Digite o segundo número"]
        secondNumberTextField.tap()
        secondNumberTextField.typeText("2")
 
        app.buttons["/"].tap()
        app.buttons["Calcular"].tap()
        
        let expectedResultText = "Resultado: 5.0"
        XCTAssert(app.staticTexts[expectedResultText].exists)
        
    }
    
    func testUpdateResultLabelDivisionByZero() {
        
        let app = XCUIApplication()
        let firstNumberTextField =  app.textFields["Digite o primeiro número"]
        firstNumberTextField.tap()
        firstNumberTextField.typeText("10")
        
        let secondNumberTextField = app.textFields["Digite o segundo número"]
        secondNumberTextField.tap()
        secondNumberTextField.typeText("0")
 
        app.buttons["/"].tap()
        app.buttons["Calcular"].tap()
        
        let expectedResultText = "Resultado: Não é possível dividir por zero."
        XCTAssert(app.staticTexts[expectedResultText].exists)
        
    }
    
    func testUpdateResultLabelInvalidInput() {
        
        let app = XCUIApplication()
        let firstNumberTextField =  app.textFields["Digite o primeiro número"]
        firstNumberTextField.tap()
        
        let secondNumberTextField = app.textFields["Digite o segundo número"]
        secondNumberTextField.tap()
 
        app.buttons["/"].tap()
        app.buttons["Calcular"].tap()
        
        let expectedResultText = ""
        XCTAssert(!app.staticTexts[expectedResultText].exists)
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
