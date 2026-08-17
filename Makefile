# Variáveis
VENV = .venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
MKDOCS = $(VENV)/bin/mkdocs

BPMN_SRC = docs/process/process.bpmn
BPMN_SVG = docs/process/process.svg
BPMN_PNG = docs/process/process.png

.PHONY: all setup install serve build clean help bpmn

all: help

help:
	@echo "Comandos disponíveis:"
	@echo "  make setup   - Cria o ambiente virtual e o arquivo .env"
	@echo "  make install - Instala as dependências (MkDocs Material)"
	@echo "  make serve   - Inicia o servidor de desenvolvimento"
	@echo "  make watch   - Alias para serve (atualização automática)"
	@echo "  make run     - Build e Serve (gera o site e inicia o servidor)"
	@echo "  make build   - Gera a versão estática do site"
	@echo "  make bpmn    - Converte o process.bpmn em SVG e PNG (requer Node.js)"
	@echo "  make clean   - Remove o ambiente virtual e arquivos temporários"

setup:
	@echo "Criando ambiente virtual..."
	python3 -m venv $(VENV)
	@echo "Criando .env a partir do .env.example..."
	@test -f .env || cp .env.example .env
	@echo "Setup concluído."

install: setup
	@echo "Instalando dependências..."
	$(PIP) install -r requirements.txt
	@echo "Instalação concluída."

serve:
	@echo "Iniciando MkDocs serve..."
	$(MKDOCS) serve

watch: serve

run: build serve

build:
	@echo "Gerando build estático..."
	$(MKDOCS) build --strict

# Usa o bpmn-to-image (oficial do bpmn.io). Reaproveita o Chrome já instalado
# quando disponível, evitando o download do Chromium pelo Puppeteer.
bpmn:
	@echo "Convertendo $(BPMN_SRC) em SVG e PNG..."
	@CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"; \
	test -x "$$CHROME" && export PUPPETEER_EXECUTABLE_PATH="$$CHROME"; \
	npx --yes bpmn-to-image --no-footer "$(BPMN_SRC):$(BPMN_SVG)" && \
	npx --yes bpmn-to-image --no-footer --scale=2 "$(BPMN_SRC):$(BPMN_PNG)"
	@echo "Diagramas gerados."

clean:
	@echo "Limpando ambiente..."
	rm -rf $(VENV) site
	@echo "Limpeza concluída."
