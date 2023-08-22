//
//  ViewCode.swift
//  SimpleCalculator
//
//  Created by Matheus Freitas Martins on 20/08/23.
//

import Foundation

protocol ViewCode {
    // Adiciona as views como subviews e define a hierarquia entre elas
    func addSubviews()
    // Define as constraints a serem usadas para posicionar os elementos na view
    func setupConstraints()
    // Define os estilos da view, como cor, bordas e etc.
    func setupStyle()
}

extension ViewCode {
    // Executa os três métodos anteriores como parte do processo padrão de inicialização de uma view
    func setup() {
        addSubviews()
        setupConstraints()
        setupStyle()
    }
}
