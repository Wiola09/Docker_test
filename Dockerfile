# Koristimo zvaničnu Python sliku koja već sadrži Python 3.10
FROM python:3.10-slim

# Instaliramo potrebne pakete za ps i netstat alate
RUN apt-get update && apt-get install -y \
    procps \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

# Postavljamo radni direktorijum unutar kontejnera
WORKDIR /app

# Instaliramo AutoGen Studio koristeći pip
RUN pip install autogenstudio

# Expose port koji AutoGen Studio koristi
EXPOSE 8081

# Komanda za pokretanje AutoGen Studio UI
CMD ["autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081"]

