*** Settings ***
Library          Mainframe3270
Library          OperatingSystem
Library          Dialogs
Library          String
Library          FakerLibrary    locale=pt_BR
Library          BuiltIn

Resource          ../Keywords/keywords.resource

Variables         ambiente.yaml
Variables         ../Data/credenciais.yaml
Variables         ../Data/textos.yaml


