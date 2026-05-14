# 🚗 API Ficha Técnica Automotiva

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

| Método | Endpoint             | Descrição                      |
| ------ | -------------------- | ------------------------------ |
| POST   | `/api/veiculos`      | Criar veículo                  |
| GET    | `/api/veiculos`      | Listar veículos                |
| GET    | `/api/veiculos/{id}` | Buscar veículo por ID          |
| PUT    | `/api/veiculos/{id}` | Atualizar veículo completo     |
| PATCH  | `/api/veiculos/{id}` | Atualizar parcialmente veículo |
| DELETE | `/api/veiculos/{id}` | Remover veículo                |

# Criar banco MySQL
```
CREATE DATABASE automotiva_db;

```


# Exemplo de criação de veículo

## POST /api/veiculos
```
{
  "marca": "Toyota",
  "modelo": "Corolla",
  "versao": "XEI",
  "especificacoes": {
    "motor": "2.0",
    "cambio": "CVT",
    "combustivel": "Flex"
  }
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
```
