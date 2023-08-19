# XCTest


O BDD - Behavior Driven Development (Desenvolvimento Guiado por Comportamento) é uma abordagem que visa criar cenários de teste de forma compreensível para qualquer pessoa. Essa metodologia busca responder três perguntas essenciais: "Dado", "Quando" e "Então".


Funcionalidade: Cadastro de Usuário no Twitter
  Como um potencial usuário do Twitter
  Eu quero criar uma conta
  Para que eu possa começar a usar a plataforma

Cenário: Usuário não possui conta no Twitter
  Dado que estou na tela inicial do Twitter
  Quando preencho os campos de cadastro
  E clico no botão "Criar Conta"
  Então recebo a mensagem "Conta cadastrada com sucesso"
  E sou redirecionado para a página inicial da minha conta no Twitter



TDD - Test Driven Development (Desenvolvimento Orientado a Teste) transforma a maneira como desenvolvemos software, pois exige que os testes sejam escritos antes da implementação do sistema.

Ciclo do TDD: 
1. Criar um teste que descreve a funcionalidade desejada.
2. Escrever o código mínimo necessário para fazer o teste passar.
3. Refatorar o código para melhorar a qualidade, mantendo o teste passando (se necessário).
