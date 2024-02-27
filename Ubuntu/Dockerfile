# Koristi zvaničnu Ubuntu osnovnu sliku
FROM ubuntu:latest

# Postavi radni direktorijum u kontejneru
WORKDIR /app

# Instaliraj Python i pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Kopiraj izvorni kod aplikacije u kontejner
COPY . /app

# Instaliraj Python zavisnosti
RUN pip3 install -r requirements.txt

# Postavi port na kojem će aplikacija slušati
EXPOSE 5000

# Pokreni Flask aplikaciju
CMD ["python3", "app.py"]


