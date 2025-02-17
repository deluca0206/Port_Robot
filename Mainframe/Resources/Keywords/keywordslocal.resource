*** Settings ***
Resource          ../Screens/setuplocal.resource

*** Keywords ***
Iniciar conexão Mainframe
    [Arguments]    ${host}    ${port}
    Open Connection    host=${host}    port=${port}

Encerrar conexão Mainframe
    Take Screenshot    
    Close Connection

Dado que estou na aplicação
    Wait Until String    txt=Ambiente educacional customizado por Ivan Sanches    timeout=10s

Quando realizo o login na aplicação
    [Arguments]    ${USER}    ${PASSWORD}
    Write Bare In Position    ${USER}    23    12
    Send Enter
    Write Bare    ${PASSWORD}
    Send Enter
    Send Enter
    Send Enter

Então deve acessar o menu principal e efetuar o logoff
    Wait Until String    txt=TK4- Version 1.00 Update 08 -- MVS PUT 8505    timeout=10s
    Write Bare    txt=X
    Send Enter
    Wait Until String    txt=READY    timeout=10s
    Write Bare    txt=LOGOFF
    Send Enter
    Wait Until String    txt=Logon    timeout=10s