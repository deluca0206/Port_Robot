*** Settings ***
Resource          ../Screens/setup.resource

*** Keywords ***
Iniciar conexão Mainframe
    Open Connection    host=pub400.com    port=23
    Change Timeout     0.5
    Change Wait Time    wait_time=0.5

Encerrar conexão Mainframe
    Take Screenshot
    Close Connection

Dado que estou na aplicação
    Send Enter
    Wait Until String    txt=Welcome to PUB400.COM * your public IBM i server    timeout=10s

Quando realizo o login na aplicação
    Write Bare In Position    DELUCA719    5    25
    Move Next Field
    Write Bare    h5208fg51
    Sleep    5s
