Here is a simple flow chart:

```mermaid
graph TD;
  A[Login/Logoff] -->|Implementa| B((Usuário))
  B -->|Inclui| C[Recuperar senha]
  D[Cadastrar usuário] -->|Implementa| E((Administrador))
  E -->|Inclui| F[Validar dados de cadastro]
  G[Alterar usuário] -->|Implementa| E((Administrador))
  G -->|Inclui| F
  H[Excluir usuário] -->|Implementa| E((Administrador))
  I[Pesquisar usuário] -->|Implementa| E((Administrador))
  J[Cadastrar componente] -->|Implementa| K((Administrador))
  K -->|Inclui| L[Validar dados do componente]
  M[Alterar componente] -->|Implementa| K((Administrador))
  M -->|Inclui| L
  N[Excluir componente] -->|Implementa| K((Administrador))
  O[Pesquisar componente] -->|Implementa| K((Usuário))
  P[Cadastrar projeto] -->|Implementa| Q((Administrador))
  R[Alterar projeto] -->|Implementa| Q((Administrador))
  S[Excluir projeto] -->|Implementa| Q((Administrador))
  T[Pesquisar projeto] -->|Implementa| Q((Usuário))
  U[Duplicar projeto] -->|Implementa| Q((Administrador))
  V[Duplicar componente] -->|Implementa| K((Administrador))
  W[Importar becape] -->|Implementa| X((Administrador))
  Y[Exportar becape] -->|Implementa| X((Administrador))
  Z[Recepção de pedidos dos clientes] -->|Implementa| AA((Usuário))
  AB[Compras junto a fornecedores] -->|Implementa| X((Administrador))
  AC[Relatório de estoque de componentes] -->|Implementa| X((Administrador))
  AD[Relatório de componentes a comprar] -->|Implementa| X((Administrador))
  AE[Relatório de componentes necessários para cada projeto] -->|Implementa| X((Administrador))
```
