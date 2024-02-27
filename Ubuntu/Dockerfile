# Koristimo zvaničnu sliku Ubuntu Jammy
FROM ubuntu:jammy-20240212

# Opciono: Ažuriramo pakete i instaliramo bilo koji potreban softver
RUN apt-get update && apt-get install -y \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Opciono: Postavljamo radni direktorijum
WORKDIR /app

# Opciono: Kopiramo lokalne fajlove u kontejner
# COPY . /app

# Komanda koja se izvršava kada se kontejner pokrene
CMD ["bash"]
