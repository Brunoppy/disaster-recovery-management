# Gerenciamento de Recuperação de Desastres

## 📌 Visão Geral do Projeto
O sistema **Gerenciamento de Recuperação de Desastres** foi criado para facilitar **respostas e recuperação** em caso de incidentes críticos em uma organização. Ele ajuda a gerenciar **eventos de desastres, backups, redundâncias e equipes de resposta**.

## 🏗️ Estrutura do Banco de Dados
- `eventos_desastres` - Registra incidentes críticos.
- `planos_recuperacao` - Contém estratégias para recuperação.
- `registros_backup` - Monitora backups realizados.
- `redundancia_sistema` - Gerencia mecanismos de failover.
- `equipes_recuperacao` - Equipes responsáveis pela recuperação.
- `testes_exercicios` - Testes simulados de recuperação.

## 🚀 Instalação
Execute o arquivo SQL no MySQL:
```sh
mysql -u root -p < gerenciamento_recuperacao_desastres.sql

