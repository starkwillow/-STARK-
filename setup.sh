#!/data/data/com.termux/files/usr/bin/bash

# Carrega variáveis de ambiente
source config.env 2>/dev/null || echo "config.env não encontrado."

# Instala dependências mínimas
pkg update -y && pkg install -y git python openssl curl

# Cria virtualenv (opcional)
python -m venv .venv
source .venv/bin/activate

# Instala bibliotecas Python se necessário
pip install requests python-dotenv

# Marca executável
chmod +x stark_dns_manager.py

# Executa o gerenciador DNS se existir
if [ -f "stark_dns_manager.py" ]; then
  python stark_dns_manager.py
else
  echo "[ERRO] Arquivo stark_dns_manager.py não encontrado."
fi
