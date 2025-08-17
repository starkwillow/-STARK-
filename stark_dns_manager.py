import os
from dotenv import load_dotenv

load_dotenv()

domain = os.getenv("DOMAIN", "eustark.com")

print(f"[🛰️] STARK DNS Manager iniciado para o domínio: {domain}")
