*** Settings ***
Resource          ../Resources/Screens/setup.resource
Resource          ../Resources/Keywords/keywords.resource

Test Setup        Iniciar conexão Mainframe
Test Teardown     Encerrar conexão Mainframe

*** Test Cases ***
Caso de Teste 1 - Validar alteração de senha inicial com sucesso
    Dado que estou na aplicação
    Quando realizo o login na aplicação
    # Então devo realizar a alteração de senha