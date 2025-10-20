FROM dc4warrior/clinton:latest
RUN apt-get update && \ 
    apt-get install -y gcc python3-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

# requirements.txt ထဲမှ packages များကို install လုပ်ပါ
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
