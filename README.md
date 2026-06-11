🐳 Domínio Prático: Git, GitHub e Docker
📖 Sobre o Projeto
Este repositório é um laboratório prático projetado para consolidar o aprendizado em controle de versão e conteinerização de aplicações, evoluindo do nível básico ao avançado. Ele explora a integração contínua desde o desenvolvimento do código até o deploy automatizado em containers
.
O objetivo principal é entender como o Git atua no controle do histórico local
, como o GitHub facilita a colaboração remota
, e como o Docker proporciona o isolamento de aplicações
, garantindo que o software funcione em qualquer ambiente de forma padronizada
.
🎯 Objetivos de Aprendizado
Ao longo deste projeto, os seguintes conceitos foram aplicados na prática:
🐙 Git & GitHub
Fundamentos: Diferença entre Git (local) e GitHub (remoto)
.
Segurança: Configuração e autenticação via Chaves SSH (ed25519) para comunicação segura entre a máquina e o GitHub
.
Manipulação de Histórico: Uso estratégico de commits, alteração de mensagens (amend)
, reversão segura para trabalho em equipe (revert)
 e exclusão de histórico local (reset)
.
Colaboração e Conflitos: Resolução de conflitos de código utilizando o Merge Editor do VSCode
.
Automação (CI/CD): Criação de workflows no GitHub Actions separando jobs de validação (check.yml) e construção de artefatos (build.yml)
.
🐋 Docker & Docker Compose
Ciclo de Vida de Containers: Inicialização, execução em segundo plano, mapeamento de portas (-p) para acesso no host e encerramento de processos
.
Criação de Imagens: Escrita de Dockerfile utilizando instruções como FROM, WORKDIR, COPY e ENTRYPOINT para empacotar a aplicação
.
Redes e Volumes: Criação de volumes nativos para persistência de dados em banco de dados
 e redes do tipo bridge para comunicação entre aplicações no mesmo servidor utilizando o nome do container
.
Orquestração: Uso do docker-compose.yml para iniciar e conectar múltiplos containers (aplicação e banco de dados) simultaneamente com um único comando
.
Otimização Avançada: Aplicação da técnica de Multistage Build para separar a compilação da execução, resultando em imagens de produção mais leves e rápidas
.
Deploy: Autenticação via Secrets (Tokens) e publicação (push) das imagens otimizadas no Docker Hub
.
🗺️ Roteiro Prático (Backlog)
Para dominar os conceitos, o projeto foi estruturado nos seguintes épicos:
Fundamentos Iniciais: Geração de chave SSH no GitHub (marcosturisco), criação do repositório (git init) e execução do primeiro container de testes
.
Customização e Redes: Criação de um Dockerfile customizado, geração de volumes gerenciados pelo Docker para evitar perda de dados e configuração de uma rede bridge
.
Orquestração e Histórico: Criação de um docker-compose.yml para subir tudo coordenadamente
 e treinamento focado em manipulação do histórico Git (revert, reset, amend)
.
Automação Final: Escrita de arquivos YAML no GitHub Actions para automatizar a compilação do código (Multistage Build) sempre que houver um push na branch principal
, enviando a imagem final direto para a conta do Docker Hub (dockermactur)
.
💻 Guia Rápido de Comandos Utilizados
Controle de Versão (Git)
Comando
Descrição Prática
ssh-keygen -t ed25519 -C "email"
Gera chaves criptográficas para autenticar a máquina com o GitHub
.
git init
Transforma a pasta local em um repositório Git, criando a pasta .git
.
git remote add origin <url>
Conecta o projeto local ao repositório remoto no GitHub
.
git commit --amend
Modifica ou adiciona arquivos no último commit sem sujar o histórico
.
git revert <hash>
Desfaz as alterações de um commit passado criando um novo commit seguro
.
git reset --hard <hash>
Apaga o histórico e retorna o projeto exatamente ao estado do hash informado
.
Conteinerização (Docker)
Comando
Descrição Prática
docker run -d -p 8080:80 <imagem>
Baixa a imagem, executa o container no fundo (-d) e mapeia as portas (-p)
.
docker build -t dockermactur/app .
Constrói a imagem localmente lendo o Dockerfile da pasta atual (.) e aplica sua tag do Docker Hub
.
docker volume create <nome>
Cria um volume persistente para banco de dados no host gerenciado pelo Docker
.
docker network create --driver bridge <nome>
Cria rede isolada para containers conversarem
.
docker compose up --build -d
Lê o docker-compose.yml, constrói as imagens do zero e sobe a infraestrutura
.
docker push dockermactur/app
Envia sua imagem final pronta para o seu repositório no Docker Hub
.
Autor: Marcos Turisco (@marcosturisco) Imagens Docker: dockermactur