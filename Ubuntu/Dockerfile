# Koristimo zvaničnu Ubuntu sliku kao osnovu
FROM ubuntu:jammy-20240212

# Postavljanje okruženja da koristi /bin/bash
SHELL ["/bin/bash", "-c"]

# Ažuriranje repozitorijuma i instalacija osnovnih alata
# Instaliramo ca-certificates i bash za svaki slučaj
RUN apt-get update && apt-get install -y \
    ca-certificates \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Opciono: Postavite radni direktorijum unutar kontejnera
WORKDIR /app

# Opciono: Kopiranje lokalnih fajlova u kontejner
# COPY . /app

# Podrazumevana komanda koja se pokreće kada se kontejner pokrene
CMD ["bash"]

