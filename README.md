# Report-ABAP-Calculadora-e-Tabuada

Report ABAP – Calculadora e Tabuada

Este programa em ABAP Clássico simula uma calculadora simples e também permite a geração de tabuadas personalizadas com base nas opções selecionadas pelo usuário na tela de seleção.

Conceitos Aplicados

O desenvolvimento explora os seguintes fundamentos do ABAP clássico:

Criação e organização de SELECTION-SCREEN

Uso de RADIOBUTTON GROUP

Validações com AT SELECTION-SCREEN

Modularização com FORM e PERFORM

Estruturas condicionais (IF, CASE)

Estruturas de repetição (DO)

Manipulação de variáveis do sistema (sy-index)

Funcionalidades
Operações Matemáticas

Permite realizar operações entre dois números inteiros:

Adição

Subtração

Multiplicação

Divisão

Validações Implementadas

Bloqueio de divisão por zero

Tratamento de entrada inválida antes da execução principal

Geração de Tabuada

Gera a tabuada de 1 a 10 com base no número informado pelo usuário.

Operações disponíveis na tabuada:

Adição sequencial

Subtração sequencial

Multiplicação

Divisão

Validações Implementadas

Impede geração de tabuada com número zero

Lógica do Programa

O programa segue o modelo clássico de execução do ABAP:

Validações são realizadas no evento AT SELECTION-SCREEN.

O processamento principal ocorre no START-OF-SELECTION.

A geração da tabuada utiliza estrutura de repetição com controle por sy-index, permitindo o cálculo dinâmico das operações de 1 a 10.

A lógica é organizada por meio de modularização com FORM e PERFORM, garantindo melhor separação de responsabilidades e maior legibilidade do código.

Competências Técnicas Demonstradas

Neste projeto são aplicados, na prática, fundamentos essenciais do desenvolvimento ABAP, demonstrando:

Capacidade de estruturar interfaces SAP utilizando SELECTION-SCREEN de forma organizada

Compreensão do modelo de execução orientado a eventos do ABAP (AT SELECTION-SCREEN, START-OF-SELECTION)

Organização e separação de responsabilidades por meio de modularização

Aplicação de lógica condicional para tomada de decisão (IF, CASE)

Utilização de estruturas de repetição para processamento controlado

Manipulação consciente de variáveis do sistema (sy-index)

Implementação de validações preventivas para evitar erros em tempo de execução

Modularização do código

Uso de estruturas de decisão e repetição

Organização lógica de um report simples
<img width="1227" height="693" alt="553663399-02ee4279-05bc-4861-8b3f-7e7bba6cc6eb" src="https://github.com/user-attachments/assets/b9996500-c83d-432c-b6b1-fc4d62e5b8c8" />
<img width="696" height="385" alt="553664992-1a20cdcc-5ef0-4293-9742-c910972302dc" src="https://github.com/user-attachments/assets/0cdd487b-6a4d-4a2e-b593-ef9fcdec064e" />
<img width="343" height="83" alt="553665038-e7eaa82a-4f94-4fdc-9ed8-29ff8f0f67f8" src="https://github.com/user-attachments/assets/072458d5-bd65-4890-8a0b-a4cd6ec50fa3" />

<img width="871" height="639" alt="553666144-1423513f-d6f9-4422-8785-0e5f53d5c0d1" src="https://github.com/user-attachments/assets/f5e05be7-8906-4c87-89ef-65fdeceacb8e" />
<img width="478" height="305" alt="553666304-3c3e5e86-6fce-467e-bc48-7d6a818217b8" src="https://github.com/user-attachments/assets/af510f1a-9935-403d-93d9-d60c04a8e386" />




