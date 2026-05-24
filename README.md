## Fabrini Soares - RM 557813 
## Guilherme Cezarino Simões - RM 557724 
## Larissa Pereira Biusse - RM 564068 
## Rodrigo Leme - RM 550266 
## Thamiris Almeida - RM 559155  
## Werbeth Nunes - RM 559067 


# 🚗 API SpeedSpec Ficha Técnica Automotiva

API REST desenvolvida com Spring Boot para gerenciamento de veículos e especificações técnicas automotivas.

---

# 📋 Funcionalidades

- Criar veículos
- Listar veículos
- Buscar veículo por ID
- Atualizar veículo completo (PUT)
- Atualizar parcialmente veículo (PATCH)
- Remover veículos
- Gerenciar especificações técnicas

---

# 🛠️ Tecnologias utilizadas

- Java 25
- Spring Boot
- Spring Web
- Spring Data JPA
- Hibernate
- Maven
- MySQL
- Swagger / OpenAPI

---

# 📦 Estrutura do Projeto

``` id="s5t6x7"
src/main/java/com/automotiva/ficha_tecnica
│
├── controller
│   └── Endpoints da API REST
│
├── entity
│   └── Entidades JPA
│
├── exception
│   └── Tratamento de exceções
│
├── repository
│   └── Interfaces JPA Repository
│
├── service
│   ├── dto
│   └── Regras de negócio
│
├── util
│   └── Classes utilitárias
│
└── FichaTecnicaApplication
    └── Classe principal da aplicação
```

| Método | Endpoint | Descrição |
|:---:|---|---|
| 🟧 PUT | `/api/veiculos/{id}` | Atualizar veículo |
| 🟥 DELETE | `/api/veiculos/{id}` | Deletar veículo |
| 🟩 PATCH | `/api/veiculos/{id}` | Atualizar parcialmente veículo |
| 🟦 GET | `/api/veiculos` | Listar veículos |
| 🟩 POST | `/api/veiculos` | Criar novo veículo |
| 🟩 POST | `/api/veiculos/especificacoes` | Buscar especificações do veículo |
| 🟩 POST | `/api/veiculos/comparar` | Comparar dois veículos |

# Criar banco MySQL
```
CREATE DATABASE automotiva_db;

```


# Exemplo busca 

## POST /api/veiculos/especificacoes
```
{
  "marca": "ford",
  "modelo": "ranger",
  "versao": "XLT 3.0L V6 AT 26MY",
  "atributos": [
    "cilindrada" , "potencia"
  ]
}
```

# Exemplo de atualização parcial

## PATCH /api/veiculos/1
{
  "marca": "Toyota Atualizada"
}


# Aplicação disponível em
```
http://localhost:8085/api/veiculos

http://localhost:8085/swagger
```
