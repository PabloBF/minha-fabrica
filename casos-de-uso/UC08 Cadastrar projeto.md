Nome do caso de uso: UC8. Cadastrar projeto

Atores principais: PROJETISTA
Ator secundário: ADMINISTRADOR
Resumo: Este caso de uso descreve as etapas necessárias para que o USUÁRIO cadastre um projeto.
Pré-condições: -
Pós-condições: Após cadastrado, o projeto deverá ficar disponível para o SISTEMA FÁBRICA incluí-lo no pedido ao solicitar produto (UC20. Fazer pedido).

Cenário principal

Ações do ator (AA) e Ações do sistema (AS)

1 AA. O ADMINISTRADOR ou o SISTEMA FÁBRICA identifica a necessidade de cadastrar um novo projeto.
2 AA. O ADMINISTRADOR solicita que o PROJETISTA o execute.
3 AA. O USUÁRIO clica em cadastrar projeto.
4 AS. Uma nova janela será exibida com campos obrigatórios (Nome do projeto, BOM list, quantidade de horas/operador necessárias para a produção de uma unidade do mesmo e descrição) e campos opcionais (foto e vídeo demonstrativo).
5 AA. O USUÁRIO insere as informações solicitadas na janela, então o botão CADASTRAR PROJETO fica disponível, caso os campos obrigatórios estejam preenchidos (inicialmente, o botão CADASTRAR PROJETO fica indisponível, em aparência de marca d’água, somente sendo ativo na condição citada acima).
6 AS. As informações do novo projeto são salvas no banco de dados do sistema com os status de CADASTRO EM ANÁLISE. O ADMINISTRADOR é, então, informado da necessidade de revisar cadastro com ações pertinentes no UC8.1. Revisar cadastro de projeto.

Restrições/Validações

-

Cenário alternativo 1 – Projetos com BOM list similares

1 AS. Caso um projeto tenha coincidência de componentes na ordem de 75% ou mais, o mesmo será cadastrado com o status de CADASTRO PENDENTE até a análise do ADMINISTRADOR, por meio da UC8.1. Revisar cadastro de projeto.

Cenário alternativo 2 - Componente utilizado com muita frequência

1 AS. Será sugerida revisão, no caso de uso UC21. Consultar almoxarifado, do estoque mínimo do componente.

Cenário alternativo 3 – ADMINISTRADOR não confirma cadastro

1 AA Caso o ADMINISTRADOR considere o projeto inviável, não confirmará o cadastro (STATUS INDISPONÍVEL).

Exceções

Caso o ADMINISTRADOR cadastre um projeto, o status do mesmo sempre será CADASTRADO, não havendo a possibilidade de o mesmo ser revisado.
