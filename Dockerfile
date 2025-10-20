# Option A: Python official image ကို သုံးခြင်း (ပိုမိုကောင်းမွန်သည်)
FROM python:3.9-slim-buster 

# C-extensions များကို build လုပ်ရန် လိုအပ်သော System Tools များကို install လုပ်ပါ
RUN apt-get update && \
    apt-get install -y gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*
    
# ... (ကျန်တဲ့ command များ)
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
