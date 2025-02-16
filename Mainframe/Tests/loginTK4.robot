*** Settings ***
Resource          ../Resources/Screens/setuplocal.resource

Test Setup        Iniciar conexão Mainframe    ${HOST.local}    ${PORT.local}
Test Teardown     Encerrar conexão Mainframe

*** Test Cases ***
Caso de Teste 1 - Validar alteração de senha inicial com sucesso
    Dado que estou na aplicação
    Quando realizo o login na aplicação    ${USER.local}    ${PASSWORD.local}
    Então deve acessar o menu principal e efetuar o logoff