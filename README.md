

# FreelaBot WhatsApp

## 📋 Sobre o Projeto

FreelaBot WhatsApp é um sistema de automação de atendimento desenvolvido para WhatsApp Web utilizando Python, Selenium, PHP e MySQL.

O bot identifica novas mensagens recebidas, conduz o usuário por um fluxo de atendimento automatizado, coleta informações para cadastro de freelancers e armazena todo o histórico das conversas em banco de dados.

## 🚀 Funcionalidades

- Monitoramento automático do WhatsApp Web
- Identificação de novas mensagens
- Respostas automáticas
- Coleta de nome do usuário
- Solicitação de currículo em PDF
- Registro de histórico das conversas
- Controle de etapas do atendimento
- Armazenamento de dados em MySQL

## 🛠️ Tecnologias Utilizadas

- Python
- Selenium WebDriver
- PHP
- MySQL/MariaDB
- WhatsApp Web

## 📂 Estrutura do Projeto



bot.py # Automação do WhatsApp index.php # Regras do chatbot e integração bot.sql # Estrutura do banco de dados


## ⚙️ Instalação

### 1. Clonar o repositório

```bash
git clone https://github.com/seu-usuario/freelabot-whatsapp.git

2. Importar o banco

Importe o arquivo bot.sql no MySQL ou MariaDB.

3. Configurar o servidor PHP

Coloque o arquivo index.php em seu servidor local (XAMPP, WAMP ou Laragon).

4. Instalar dependências Python
pip install selenium requests

5. Executar o bot
python bot.py

6. Conectar ao WhatsApp Web

Escaneie o QR Code quando a janela do navegador for aberta.

🗄️ Banco de Dados
usuario

Responsável por controlar o status do atendimento.

historico

Armazena mensagens enviadas e recebidas.

bot

Tabela reservada para configurações futuras.

🔄 Fluxo de Atendimento
Usuário envia mensagem.
Bot solicita nome completo.
Bot solicita currículo em PDF.
Dados são registrados no banco.
Conversa é armazenada no histórico.


> Plataforma de atendimento automatizado para WhatsApp com Python, Selenium, PHP e MySQL, focada na captação e cadastro de freelancers através de fluxos automatizados de conversação.
