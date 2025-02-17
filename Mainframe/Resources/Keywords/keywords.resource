*** Settings ***
Resource          ../Screens/setup.resource

*** Keywords ***
Iniciar conexão Mainframe
    [Arguments]    ${host}    ${port}
    Open Connection    host=${host}
    Set Screenshot Folder    ${EXECDIR}/Mainframe/Logs/Screenshot

Encerrar conexão Mainframe
    Take Screenshot    
    Close Connection

Dado que estou na aplicação
    Wait Until String    txt=Welcome to PUB400.COM * your public IBM i server    timeout=10s

Quando realizo o login na aplicação
    [Arguments]    ${USER}    ${PASSWORD}
    Write Bare In Position    ${USER}    5    25
    Move Next Field
    Write Bare    ${PASSWORD}
    Send Enter

Então deve acessar o menu principal
    Wait Until String    txt=IBM i Main Menu    timeout=10s
