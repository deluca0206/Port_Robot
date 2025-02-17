*** Settings ***
Resource          ../Resources/Screens/setup.resource

Test Setup        Iniciar conexão Mainframe    ${HOST.pub400}    ${PORT.pub400}
Test Teardown     Encerrar conexão Mainframe

*** Test Cases ***
Caso de Teste 1 - Validar alteração da descrição do perfil com sucesso
    Dado que realizo o login na aplicação
    E acesso a tela de alteração de dados
    Quando edito o campo descrição do perfil
    Então vizualizo a mensagem    User profile DELUCA719 changed.