//
//  SimpleCalculatorSnapshotTests.swift
//  SimpleCalculatorSnapshotTests
//
//  Created by Matheus Freitas Martins on 22/08/23.
//

import SnapshotTesting
import XCTest
@testable import SimpleCalculator

class SimpleCalculatorSnapshotTests: XCTestCase {
  func testMyViewController() {
    let vc = ViewController()
    
      /// Descomente a linha abaixo para realizar uma nova gravação de imagem de referência
      //isRecording = true
      
      /// Captura um snapshot da visualização (view controller) vc fornecida e a compara com uma referência de imagem existente. Verifica se a aparência visual da visualização não mudou.
      assertSnapshot(matching: vc, as: .image)
      assertSnapshot(matching: vc, as: .image(on: .iPhoneSe))
      assertSnapshot(matching: vc, as: .image(on: .iPhoneSe(.landscape)))

      /// Captura um snapshot da descrição recursiva (representação hierárquica) da visualização vc. Verifica se a hierarquia da interface do usuário, incluindo subvisualizações aninhadas e suas propriedades, permanece consistente.
      assertSnapshot(matching: vc, as: .recursiveDescription)
      assertSnapshot(matching: vc, as: .recursiveDescription(on: .iPhoneSe))
      assertSnapshot(matching: vc, as: .recursiveDescription(on: .iPhoneSe(.landscape)))
  }
}
