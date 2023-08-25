## Simple Calculator

Este projeto é uma calculadora intuitiva e fácil de usar, desenvolvida com foco na simplicidade e eficiência. Com uma abordagem centrada no código e na qualidade, o app apresenta as seguintes características:

# Características do desenvolvimento do app
## Arquitetura MVC
O App de Calculadora Simples foi desenvolvido seguindo a arquitetura MVC (Model-View-Controller). Essa estrutura organizacional divide a aplicação em três componentes interconectados:

**Model:** Responsável pela lógica de negócios e pela manipulação dos dados. No contexto da calculadora, o Model gerencia os cálculos matemáticos e as operações subjacentes.

**View:** Encarregada de exibir os elementos visuais ao usuário e de receber interações. Neste caso, a View representa a interface da calculadora, incluindo botões, campos de entrada e resultados exibidos.

**Controller:** Age como intermediário entre o Model e a View. Ele recebe as ações do usuário na interface e coordena as operações correspondentes no Model, garantindo que os dados e a lógica permaneçam separados.

## Padrão de interfaces
* **ViewCode:** Foi utilizado o padrão ViewCode para criar interfaces de usuário de maneira programática, o que resulta em um código limpo e flexível. Isso facilita a manutenção e a implementação de novos recursos.

## Testes implementados
* **Unit Tests:** Acredito na importância da estabilidade do aplicativo. Por isso, implementei testes unitários abrangentes que garantem o funcionamento correto dos componentes individuais, proporcionando confiança durante o desenvolvimento.

* **UI Tests:** A experiência do usuário é fundamental. Os testes de interface garantem que a interação do usuário com a calculadora seja sempre suave e livre de erros, independentemente das ações realizadas.

* **Performance Test:** Entendo a necessidade de um desempenho otimizado. Foi realizado testes de desempenho para identificar possíveis gargalos e garantir que o app funcione de maneira eficaz, mesmo em cenários de uso intensivo.

* **Snapshot Tests:** A consistência visual é essencial para a identidade do aplicativo. Os testes de captura de tela (snapshot tests) asseguram que as mudanças no layout não afetem negativamente a aparência do app em diferentes dispositivos.

# Alguns conceitos a respeito de testes:

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
