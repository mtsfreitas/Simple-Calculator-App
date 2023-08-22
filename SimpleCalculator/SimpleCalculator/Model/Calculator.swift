//
//  Calculator.swift
//  SimpleCalculator
//
//  Created by Matheus Freitas Martins on 21/08/23.
//

import Foundation

struct Calculator {
    func performOperation(lhs: Double, rhs: Double, operation: String) -> Double {
        switch operation {
        case "+":
            return lhs + rhs
        case "-":
            return lhs - rhs
        case "*":
            return lhs * rhs
        case "/":
            return lhs / rhs
        default:
            return 0.0
        }
    }
}
