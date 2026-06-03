# ⚡ PC Builder ESEG

> **Disciplina:** Programação Web | **Professor:** Israel Florentino | **ESEG — Engenharia da Computação** | **1º Semestre / 2026**

Sistema web completo para montagem, validação e recomendação de configurações de computadores desenvolvido com Spring Boot, Thymeleaf e Spring Security.

---

## 📋 Sumário

1. [Visão Geral](#visão-geral)
2. [Tecnologias](#tecnologias)
3. [Arquitetura MVC](#arquitetura-mvc)
4. [Modelo de Dados](#modelo-de-dados)
5. [Funcionalidades](#funcionalidades)
6. [Regras de Negócio](#regras-de-negócio)
7. [Recomendador por Perfil](#recomendador-por-perfil)
8. [Como Executar](#como-executar)
9. [Credenciais](#credenciais)
10. [Banco de Dados H2](#banco-de-dados-h2)
11. [Estrutura de Pastas](#estrutura-de-pastas)
12. [Endpoints](#endpoints)
13. [Testes Automatizados](#testes-automatizados)

---

## Visão Geral

O **PC Builder ESEG** permite que usuários:

- **Montem builds** selecionando componentes reais do mercado brasileiro com verificação de compatibilidade em tempo real
- **Recebam recomendações** por perfil de uso (Gamer, Trabalho, Criação, Científico, Misto) com distribuição inteligente de orçamento
- **Criem builds automáticas** com um clique: o sistema seleciona CPU (preferindo AMD Ryzen para games e criação), placa-mãe compatível com o socket, RAM compatível com o DDR, fonte calculada pelo consumo real e gabinete proporcional ao orçamento
- **Explorem o catálogo** de 283 componentes reais com filtros por categoria, fabricante e preço
- **Compartilhem builds** na comunidade com sistema de curtidas e ranking público

---

## Tecnologias

| Camada | Tecnologia | Versão |
|--------|-----------|--------|
| Linguagem | Java | 17 |
| Framework | Spring Boot | 3.2.5 |
| Persistência | Spring Data JPA + Hibernate | 6.4.4 |
| Segurança | Spring Security | 6.2.4 |
| Template Engine | Thymeleaf | 3.1.2 |
| Banco (dev) | H2 in-memory | 2.2.224 |
| Frontend | Bootstrap | 5.3.2 |
| Ícones | Bootstrap Icons | 1.11.3 |
| CSRF | CookieCsrfTokenRepository | — |

---

## Arquitetura MVC

```
Requisição HTTP
      ↓
┌─────────────────┐
│   Controller    │  Recebe requisições, aciona Services, passa dados ao template
│ PcBuilderCtrl   │
└────────┬────────┘
         ↓
┌─────────────────┐
│    Service      │  Regras de negócio, validações, recomendação
│ ConfiguracaoSvc │
│ RecomendacaoSvc │
│ ComunidadeSvc   │
└────────┬────────┘
         ↓
┌─────────────────┐
│   Repository    │  Acesso ao banco via Spring Data JPA
└────────┬────────┘
         ↓
┌─────────────────┐
│   Banco H2      │  In-memory, populado pelo data.sql na inicialização
└─────────────────┘
         ↓
┌─────────────────┐
│   Thymeleaf     │  Templates HTML renderizados no servidor
└─────────────────┘
```

---

## Modelo de Dados

### Entidades (8 + 1 Enum)

| Entidade | Descrição |
|----------|-----------|
| `Componente` | Peça de hardware com nome, preço, TDP, socket, DDR, links de compra |
| `Configuracao` | Build do usuário com nome, itens, curtidas, visibilidade |
| `ItemConfiguracao` | Tabela N:M entre Build e Componente com atributo quantidade |
| `Usuario` | Usuário do sistema com e-mail, senha BCrypt e role |
| `Categoria` | 9 categorias: Processador, GPU, RAM, SSD, Placa-Mãe, Cooler, Fonte, Gabinete, Fan |
| `Fabricante` | 36 fabricantes (Intel, AMD, NVIDIA, Corsair...) |
| `AvaliacaoComponente` | Nota (1-5) de um usuário para um componente |
| `Wishlist` | Lista de desejos de um usuário |
| `PerfilUso` | Enum: GAMER, TRABALHO, CRIACAO, CIENTIFICO, MISTO |

### Relacionamentos

```
Categoria  (1) ────── (N)  Componente
Fabricante (1) ────── (N)  Componente
Usuario    (1) ────── (N)  Configuracao
Configuracao (1) ──── (N)  ItemConfiguracao  ←── N:M com atributo extra
Componente (1) ────── (N)  ItemConfiguracao
Usuario    (1) ────── (N)  AvaliacaoComponente
Componente (1) ────── (N)  AvaliacaoComponente
Usuario    (1) ────── (N)  Wishlist
Componente (1) ────── (N)  Wishlist
```

---

## Funcionalidades

### Autenticação
- Login com e-mail e senha via Spring Security
- Dois papéis: `ROLE_USER` e `ROLE_ADMIN`
- Senhas armazenadas com hash **BCrypt**
- CSRF com `CookieCsrfTokenRepository` (evita double-login)

### Dashboard
- 4 cards de estatísticas: componentes, categorias, builds salvas, total investido
- Formulário de nova build com selects por categoria
- Componentes ordenados por fabricante A-Z e preço crescente
- Verificação de compatibilidade em **tempo real** via AJAX (`POST /api/verificar-compatibilidade`)

### Catálogo
- 283 componentes com filtros: categoria, fabricante, preço máximo, busca por texto
- Links de compra para KaBuM, Pichau e Terabyte em todos os componentes
- Imagens por fabricante via `cdn.simpleicons.org`

### Recomendador
- 5 perfis de uso com cards clicáveis
- Slider de orçamento sincronizado com campo de texto
- Distribuição proporcional do orçamento por categoria
- **Build Automática** com seleção inteligente:
  - CPU: prefere **AMD Ryzen AM5** (GAMER, CRIAÇÃO, MISTO) por melhor desempenho/núcleo
  - Placa-mãe: compatível com socket da CPU selecionada
  - RAM: compatível com DDR da placa-mãe selecionada
  - Fonte: calculada pelo consumo real dos outros componentes (`consumo / 0.80`, arredondado)
  - Gabinete: proporcional ao orçamento
  - Avisos: compatibilidade de gabinete com GPU e preços aproximados

### Comunidade
- Builds públicas com curtidas e ranking
- Avaliações de componentes (1-5 estrelas)
- Wishlist com links de compra

### Admin
- CRUD de componentes em `/admin/componentes`
- Acessível apenas com `ROLE_ADMIN`

---

## Regras de Negócio

Implementadas em `ConfiguracaoService.java`, validadas antes de qualquer save:

| # | Regra | Mensagem de erro com solução |
|---|-------|------------------------------|
| 1 | Mínimo de 3 categorias distintas | Indica quantas categorias faltam |
| 2 | Fonte de alimentação obrigatória | Sugere adicionar uma fonte |
| 3 | Consumo ≤ 80% da capacidade da fonte | Calcula e indica a fonte mínima necessária |
| 4 | Socket CPU = Socket Placa-Mãe | Indica o socket correto para trocar |
| 5 | DDR da RAM = DDR da Placa-Mãe | Indica a versão DDR necessária |

---

## Recomendador por Perfil

### Distribuição de Orçamento por Perfil

| Categoria | GAMER | TRABALHO | CRIAÇÃO | CIENTÍFICO | MISTO |
|-----------|-------|----------|---------|------------|-------|
| GPU | 33% | 5% | **28%** | — | 26% |
| CPU | 18% | 22% | 22% | 33% | 20% |
| Placa-Mãe | 12% | 18% | 10% | 14% | 12% |
| RAM | 10% | 18% | 16% | 28% | 14% |
| Armazenamento | 7% | 13% | 13% | 10% | 10% |
| Cooler | 5% | 5% | 4% | 5% | 5% |
| Fonte | 8% | 9% | 4% | 5% | 7% |
| Gabinete | 7% | 5% | 3% | 5% | 6% |

> **Nota:** Para CRIAÇÃO, GPU recebe 28% porque renderização e edição de vídeo dependem fortemente da GPU. Para CIENTÍFICO, GPU recebe 0% pois workstations de ML/simulação priorizam CPU e RAM.

### Critério de CPU por Perfil

| Perfil | Critério CPU | Motivo |
|--------|-------------|--------|
| GAMER | AM5 > LGA1851 > LGA1700, todos por preço desc | Ryzen 7000/9000 tem melhor IPC para games |
| TRABALHO | TDP desc | Mais potência = mais produtividade |
| CRIAÇÃO | AM5 > LGA1851 por preço desc | Ryzen tem mais núcleos para renderização |
| CIENTÍFICO | Preço desc | Máximo desempenho absoluto |
| MISTO | AM5 > LGA1851 por preço desc | Melhor custo/benefício geral |

### Garantias de Compatibilidade
1. Processadores sem placa-mãe no banco (AM3+, LGA1150) são filtrados automaticamente
2. Placa-mãe top pick sempre tem o mesmo socket da CPU top pick
3. RAM top pick sempre é compatível com o DDR da placa-mãe top pick
4. Fonte calculada após os outros componentes: `ceil(consumo / 0.80 / 50) × 50`W

---

## Como Executar

**Pré-requisitos:** Java 17+, Maven 3.6+

```bash
# Clone o repositório
git clone https://github.com/DitF0/Projeto-PCbuilder.git
cd Projeto-PCbuilder

# Execute com Maven
mvn spring-boot:run
```

Acesse em `http://localhost:8080`. O banco H2 é populado automaticamente com 283 componentes ao iniciar.

---

## Credenciais

| Papel | E-mail | Senha |
|-------|--------|-------|
| Administrador | `admin@eseg.edu.br` | `123456` |
| Usuário | `aluno@eseg.edu.br` | `123456` |

---

## Banco de Dados H2

```
Console:  http://localhost:8080/h2-console
JDBC URL: jdbc:h2:mem:pcbuilderdb
Usuário:  sa  |  Senha: (vazio)
```

| Item | Quantidade |
|------|-----------|
| Categorias | **9** (inclui Fan) |
| Fabricantes | 36 |
| Componentes | **283+** |
| Fontes até | 2000W |

---

## Estrutura de Pastas

```
src/
├── main/
│   ├── java/br/edu/eseg/pcbuilder/
│   │   ├── config/
│   │   │   ├── DataInitializer.java      ← Cria admin/aluno com BCrypt
│   │   │   └── SecurityConfig.java       ← Spring Security + CookieCsrfTokenRepository
│   │   ├── controller/
│   │   │   └── PcBuilderController.java  ← Todos os endpoints
│   │   ├── model/                        ← 8 entidades + PerfilUso enum + RecomendacaoDTO
│   │   ├── repository/                   ← 8 interfaces Spring Data JPA
│   │   └── service/
│   │       ├── ConfiguracaoService.java  ← 5 regras de negócio
│   │       ├── RecomendacaoService.java  ← Algoritmo de recomendação
│   │       ├── ComunidadeService.java    ← Curtidas, avaliações, wishlist
│   │       └── UserDetailsServiceImpl.java
│   └── resources/
│       ├── templates/                    ← 10 templates Thymeleaf
│       ├── application.properties
│       └── data.sql                      ← 283 componentes + imagens + URLs
└── test/
    └── ConfiguracaoServiceTest.java      ← 4 testes JUnit 5 + Mockito
```

---

## Endpoints

| Método | Endpoint | Descrição | Acesso |
|--------|----------|-----------|--------|
| GET | `/` | Dashboard | Autenticado |
| GET | `/login` | Tela de login animada | Público |
| GET | `/registro` | Cadastro | Público |
| GET | `/componentes` | Catálogo com filtros | Autenticado |
| GET | `/recomendar` | Recomendador por perfil | Autenticado |
| GET | `/recomendar/resultado` | Resultado da recomendação | Autenticado |
| POST | `/recomendar/build-automatica` | Criar build automática | Autenticado |
| POST | `/recomendar/salvar-selecionados` | Salvar seleção manual | Autenticado |
| POST | `/salvar-build` | Salvar build do dashboard | Autenticado |
| GET | `/ranking` | Ranking público | Autenticado |
| POST | `/api/verificar-compatibilidade` | Verificação AJAX (JSON) | Autenticado |
| GET | `/admin/**` | Painel admin | `ROLE_ADMIN` |
| GET | `/h2-console/**` | Console H2 | Público (dev) |

---

## Testes Automatizados

```
✅ salvarBuild_deveSalvarComSucesso_quandoTodaValidacaoPassar()
✅ salvarBuild_deveLancarExcecao_quandoMenosDeTresCategorias()    ← Regra 1
✅ salvarBuild_deveLancarExcecao_quandoSemFonte()                  ← Regra 2
✅ salvarBuild_deveLancarExcecao_quandoFonteInsuficiente()         ← Regra 3
```

Executar: clique direito em `ConfiguracaoServiceTest.java` → **Run Tests** (ou `mvn test`)

---

*Projeto desenvolvido para Programação Web — ESEG, 1º Semestre de 2026.*
