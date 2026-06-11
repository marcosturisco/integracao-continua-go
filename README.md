# 🐳 Domínio Prático: Git, GitHub e Docker

## 📖 Sobre o Projeto
Este repositório é um laboratório prático projetado para consolidar o aprendizado em controle de versão e conteinerização de aplicações, evoluindo do nível básico ao avançado. Ele explora a integração contínua desde o desenvolvimento do código até o deploy automatizado em containers. 

O objetivo principal é entender como o Git atua no controle do histórico local, como o GitHub facilita a colaboração remota, e como o Docker proporciona o isolamento de aplicações, garantindo que o software funcione em qualquer ambiente de forma padronizada.

---

## 🎯 Objetivos de Aprendizado
Ao longo deste projeto, os seguintes conceitos foram aplicados na prática:

### 🐙 Git & GitHub
* **Fundamentos:** Diferença entre Git (local) e GitHub (remoto).
* **Segurança:** Configuração e autenticação via Chaves SSH (`ed25519`) para comunicação segura entre a máquina e o GitHub.
* **Manipulação de Histórico:** Uso estratégico de commits, alteração de mensagens (`amend`), reversão segura para trabalho em equipe (`revert`) e exclusão de histórico local (`reset`).
* **Colaboração e Conflitos:** Resolução de conflitos de código utilizando o Merge Editor do VSCode.
* **Automação (CI/CD):** Criação de workflows no GitHub Actions separando jobs de validação (`check.yml`) e construção de artefatos (`build.yml`).

### 🐋 Docker & Docker Compose
* **Ciclo de Vida de Containers:** Inicialização, execução em segundo plano, mapeamento de portas (`-p`) para acesso no host e encerramento de processos.
* **Criação de Imagens:** Escrita de Dockerfile utilizando instruções como `FROM`, `WORKDIR`, `COPY` e `ENTRYPOINT` para empacotar a aplicação.
* **Redes e Volumes:** Criação de volumes nativos para persistência de dados em banco de dados e redes do tipo `bridge` para comunicação entre aplicações no mesmo servidor utilizando o nome do container.
* **Orquestração:** Uso do `docker-compose.yml` para iniciar e conectar múltiplos containers (aplicação e banco de dados) simultaneamente com um único comando.
* **Otimização Avançada:** Aplicação da técnica de *Multistage Build* para separar a compilação da execução, resultando em imagens de produção mais leves e rápidas.
* **Deploy:** Autenticação via Secrets (Tokens) e publicação (`push`) das imagens otimizadas no Docker Hub.

---

## 🗺️ Roteiro Prático (Backlog)
Para dominar os conceitos, o projeto foi estruturado nos seguintes épicos:

* **Fundamentos Iniciais:** Geração de chave SSH no GitHub (`marcosturisco`), criação do repositório (`git init`) e execução do primeiro container