//
//  View.swift
//  SimpleCalculator
//
//  Created by Matheus Freitas Martins on 20/08/23.
//

// CalculatorView.swift
import UIKit

protocol CalculatorViewDelegate: AnyObject {
    func didTapCalculate(lhs: Double, rhs: Double, operation: String)
}

class CalculatorView: UIView {
    
    private lazy var lhsTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.placeholder = "Digite o primeiro número"
        textField.keyboardType = .decimalPad
        return textField
    }()
    
    private lazy var rhsTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.placeholder = "Digite o segundo número"
        textField.keyboardType = .decimalPad
        return textField
    }()
    
    private lazy var lhsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Primeiro Número:"
        return label
    }()

    private lazy var rhsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Segundo Número:"
        return label
    }()

    
    private lazy var operationSegmentedControl: UISegmentedControl = {
        let items = ["+", "-", "*", "/"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    private lazy var calculateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .darkGray
        button.setTitle("Calcular", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(didTapCalculate), for: .touchUpInside)
        return button
    }()

    
    private lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    weak var delegate: CalculatorViewDelegate?
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubviews()
        setupConstraints()
        setupStyle()
    }
    
    private func addSubviews() {
        addSubview(lhsLabel)
        addSubview(lhsTextField)
        addSubview(rhsLabel)
        addSubview(rhsTextField)
        addSubview(operationSegmentedControl)
        addSubview(calculateButton)
        addSubview(resultLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            lhsLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            lhsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lhsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            lhsTextField.topAnchor.constraint(equalTo: lhsLabel.bottomAnchor, constant: 5),
            lhsTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lhsTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            rhsLabel.topAnchor.constraint(equalTo: lhsTextField.bottomAnchor, constant: 10),
            rhsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            rhsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            rhsTextField.topAnchor.constraint(equalTo: rhsLabel.bottomAnchor, constant: 5),
            rhsTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            rhsTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            operationSegmentedControl.topAnchor.constraint(equalTo: rhsTextField.bottomAnchor, constant: 10),
            operationSegmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            calculateButton.topAnchor.constraint(equalTo: operationSegmentedControl.bottomAnchor, constant: 20),
            calculateButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            calculateButton.widthAnchor.constraint(equalToConstant: 100),
            calculateButton.heightAnchor.constraint(equalToConstant: 40),
            
            resultLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20),
            resultLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }

    private func setupStyle() {
        backgroundColor = .white
    }
    
    @objc private func didTapCalculate() {
        guard let lhsText = lhsTextField.text, let rhsText = rhsTextField.text,
              let lhs = Double(lhsText), let rhs = Double(rhsText),
              let selectedOperation = operationSegmentedControl.titleForSegment(at: operationSegmentedControl.selectedSegmentIndex) else {
            return
        }
        delegate?.didTapCalculate(lhs: lhs, rhs: rhs, operation: selectedOperation)
    }
    
    func updateResultLabel(result: Double) {
        if result.isInfinite {
            resultLabel.text = "Resultado: Não é possível dividir por zero."
        } else {
            resultLabel.text = "Resultado: \(result)"
        }
    }

}


