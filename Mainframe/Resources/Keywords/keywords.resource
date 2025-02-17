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

Dado que realizo o login na aplicação
    Dado que estou na aplicação
    Quando realizo o login na aplicação    ${USER.pub400}    ${PASSWORD.pub400}
    Então deve acessar o menu principal

E acesso a tela de alteração de dados
    Write    txt=1
    Wait Until String    txt=Change your user profile    timeout=10s
    Write   txt=9

Quando edito o campo descrição do perfil
    Wait Until String    txt=Text 'description' . . . . . . . TEXT   timeout=10s
    ${description}=    FakerLibrary.Text    max_nb_chars=20
    Take Screenshot
    Delete Field    11    50
    Take Screenshot
    Write Bare In Position    =${description}    ypos=11    xpos=50
    Take Screenshot
    Send Enter

Então vizualizo a mensagem
    [Arguments]    ${message}
    Wait Until String    txt=${message}    timeout=10s