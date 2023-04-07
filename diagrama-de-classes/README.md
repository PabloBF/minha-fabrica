```mermaid
---
Minha fábrica
---
classDiagram

    
    UsuarioNaoAutenticado {
    - nome: String[50]
    - sobrenome: String[50]
    - nomeSocial: String[50]
    - dataNascimento: Data
    - endereco: Endereco
    - telefones: Telefone
    - cargo: Cargos
    }
    
    
    class ComponenteEletronico {
    - codigo: auto int
    
    }
    

    Cliente             "-cliente 1" <--               NotaFiscalVenda
    NotaFiscalVenda                  <..               TesteNotaFiscal : usa
    TipoCliente     "-tipoCliente 1" <--               Cliente
    NotaFiscalVenda                  o-- "-itens 1..*" ItemNotaFiscal
    NotaFiscalVenda  "-notaFiscal 1" <--               ItemNotaFiscal
    Produto             "-produto 1" <--               ItemNotaFiscal    

    class Cliente {
    - codigo: int
    - nome: String
    - cnpjcpf: String
    - tipoCliente: TipoCliente
    - Cliente(): void
    - toString(): String
    }
    
    class NotaFiscalVenda {
      - codigo : int
      - data : String
      - valorNota : float
      - calcularValor(): BigDecimal
      - criarItemNotaFiscal(): void
      - NotaFiscalVenda(): void
      - toString(): String
    }
    
    class TesteNotaFiscal {
      + main(): void
    }
    
    class TipoCliente {
    <<Enumeration>>
      PESSOAFISICA
      PESSOAJURIDICA
    }
    
    class ItemNotaFiscal {
      - numero : int
      - quantidade : int
      - valor : BigDecimal
      - valorItemNF(): double
      - toString(): String
    }
    
    class Produto {
      - codigo : int
      - descricao : String
      - valor : BigDecimal
      - Produto(): void
      - toString(): String
    }
```
