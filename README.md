## XCTest

### BDD - Behavior Driven Development

O BDD - Behavior Driven Development (Desenvolvimento Guiado por Comportamento) é uma abordagem que visa criar cenários de teste de forma compreensível para qualquer pessoa. Essa metodologia busca responder três perguntas essenciais: "Dado", "Quando" e "Então".

#### Funcionalidade: Cadastro de Usuário no Twitter

Como um potencial usuário do Twitter, eu quero criar uma conta para que eu possa começar a usar a plataforma.

**Cenário:** Usuário não possui conta no Twitter
Dado que estou na tela inicial do Twitter
Quando preencho os campos de cadastro e clico no botão "Criar Conta"
Então recebo a mensagem "Conta cadastrada com sucesso"
E sou redirecionado para a página inicial da minha conta no Twitter.

### TDD - Test Driven Development

O TDD - Test Driven Development (Desenvolvimento Orientado a Teste) transforma a maneira como desenvolvemos software, pois exige que os testes sejam escritos antes da implementação do sistema.

Ciclo do TDD:

1. Criar um teste que descreve a funcionalidade desejada.
2. Escrever o código mínimo necessário para fazer o teste passar.
3. Refatorar o código para melhorar a qualidade, mantendo o teste passando (se necessário).

## Teste Unitário (Unit Testing):
Os testes unitários são usados para testar unidades individuais de código, como funções , métodos ou pequenas classes. O objetivo é verificar se essas unidades funcionam corretamente, isoladas de outras partes do sistema.

## Teste de UI (User Interface Testing):
Os testes de UI focam na interação do usuário com a interface gráfica da aplicação. Eles simulam ações do usuário, como toques na tela, entradas de teclado e navegação, e verificam se a interface responde corretamente.

## Teste de Performance (Performance Testing):
Os testes de performance visam avaliar como o sistema se comporta em termos de desempenho e escalabilidade. Isso pode envolver a execução de códigos repetidamente para medir o tempo de execução e a eficiência em diferentes cenários. Por exemplo, você pode testar o tempo de resposta de uma função que processa grandes conjuntos de dados para garantir que ela não se torne um gargalo de desempenho.
