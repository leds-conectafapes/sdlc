# LEDS SDLC Process

Documentação do **Ciclo de Vida de Desenvolvimento de Software (SDLC)** do Laboratório de Extensão em Desenvolvimento de Soluções (LEDS).

📖 **Documentação publicada:** <https://leds-conectafapes.github.io/sdlc/>

## Sobre

Este repositório contém o processo de desenvolvimento de software adotado pelo LEDS, incluindo:

- **Equipe** — estrutura, papéis e organização de times (baseado em LeSS)
- **Processo SDLC** — fases do ciclo de vida: Statement of Work (SOW), Discovery, Inception e Implementação
- **Modelos** — templates padronizados de SOW, Benchmarking e Base de Conhecimento de Domínios

O site é gerado com [MkDocs](https://www.mkdocs.org/) e o tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Estrutura

```
docs/
├── index.md          # Página inicial
├── team/             # Estrutura da equipe e organização de times
├── sdlc/             # Fases do processo (SOW, Discovery, Inception...)
└── modelos/          # Templates (SOW, Benchmarking, Base de Conhecimento)
```

## Como executar localmente

Pré-requisitos: Python 3 e `make`.

```bash
make install   # Cria o ambiente virtual e instala as dependências
make serve     # Inicia o servidor de desenvolvimento em http://127.0.0.1:8000
```

Outros comandos:

```bash
make build     # Gera a versão estática do site (modo strict)
make clean     # Remove o ambiente virtual e arquivos temporários
make help      # Lista todos os comandos disponíveis
```

## Como publicar

O site é publicado no GitHub Pages a partir da branch `gh-pages`:

```bash
.venv/bin/mkdocs gh-deploy
```

## Contribuindo

1. Crie uma branch a partir da `main`.
2. Edite os arquivos Markdown em `docs/`.
3. Valide localmente com `make serve`.
4. Abra um Pull Request.
