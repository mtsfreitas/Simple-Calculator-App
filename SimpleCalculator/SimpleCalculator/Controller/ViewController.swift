//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Matheus Freitas Martins on 20/08/23.
//
// ViewController.swift
import UIKit

class ViewController: UIViewController {
    
    private lazy var myView: CalculatorView = {
        let view = CalculatorView()
        view.delegate = self
        return view
    }()
    
    private let calculator = Calculator()
    
    override func loadView() {
        super.loadView()
        
        self.view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.setup()
    }
}

extension ViewController: CalculatorViewDelegate {
    func didTapCalculate(lhs: Double, rhs: Double, operation: String) {
        let result = calculator.performOperation(lhs: lhs, rhs: rhs, operation: operation)
        myView.updateResultLabel(result: result)
    }
}

