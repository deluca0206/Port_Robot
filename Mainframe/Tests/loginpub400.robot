*** Settings ***
Resource          ../Resources/Screens/setup.resource

Test Setup        Iniciar conexão Mainframe    ${HOST.pub400}    ${PORT.pub400}
Test Teardown     Encerrar conexão Mainframe

*** Test Cases ***
Caso de Teste 1 - Validar alteração de senha inicial com sucesso
    Dado que estou na aplicação
    Quando realizo o login na aplicação    ${USER.pub400}    ${PASSWORD.pub400}
    Então deve acessar o menu principal