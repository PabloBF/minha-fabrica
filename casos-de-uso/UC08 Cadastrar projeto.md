# UC8. Cadastrar projeto
Este caso de uso descreve as etapas necessárias para que o USUÁRIO cadastre um projeto.

## Atores
### Ator principal
📐 Projetista

### Ator secundário
👨‍💼 Administrador

## Condições
### Pré-condições
Não se aplica.

### Pós-condições
Após cadastrado, o projeto deverá ficar disponível para o SISTEMA FÁBRICA incluí-lo no pedido ao solicitar produto (UC20. Fazer pedido).

## Cenário principal
Ações do ator (📐) e Ações do sistema (⚙️)

1. 📐. Identifica a necessidade de cadastrar um novo projeto.
2. 📐. Clica em cadastrar projeto.
3. ⚙️. Exibe uma nova janela com campos obrigatórios (Nome do projeto, _BOM list_, quantidade de horas/operador necessárias para a produção de uma unidade do mesmo e descrição) e campos opcionais (foto e vídeo demonstrativo).
4. 📐. Insere as informações solicitadas na janela. O botão CADASTRAR PROJETO fica disponível somente se os campos obrigatórios estiverem preenchidos (inicialmente, o botão CADASTRAR PROJETO fica indisponível, em aparência de marca d’água).
5. ⚙️. Salva as informações do novo projeto no banco de dados do sistema com o status de CADASTRO EM ANÁLISE. O ADMINISTRADOR é informado da necessidade de revisar o cadastro com ações pertinentes no [UC8.1. Revisar cadastro de projeto](UC8.1. Revisar cadastro de projeto.md).

## Restrições e validações
Não se aplica.

## Cenários alternativos

### Cenário alternativo 1 – Projetos com BOM list similares
4. ⚙️. Caso um projeto tenha coincidência de componentes na ordem de 75% ou mais, o mesmo será cadastrado com o status de CADASTRO PENDENTE até a análise do ADMINISTRADOR, por meio da UC8.1. Revisar cadastro de projeto.

### Cenário alternativo 2 - Componente utilizado com muita frequência
4. ⚙️. Será sugerida revisão, no caso de uso UC21. Consultar almoxarifado, do estoque mínimo do componente.

### Cenário alternativo 3 – ADMINISTRADOR não confirma cadastro
4. 📐. Caso o ADMINISTRADOR considere o projeto inviável, não confirmará o cadastro (STATUS INDISPONÍVEL).

## Exceções
Caso o ADMINISTRADOR cadastre um projeto, o status do mesmo sempre será CADASTRADO, não havendo a possibilidade de o mesmo ser revisado.
