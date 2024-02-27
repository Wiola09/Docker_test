# Koristimo zvaničnu Python sliku koja već sadrži Python 3.10
FROM python:3.10-slim

# Postavljamo radni direktorijum unutar kontejnera
WORKDIR /app

# Instaliramo AutoGen Studio koristeći pip
RUN pip install autogenstudio

# Expose port koji AutoGen Studio koristi
EXPOSE 8081

# Komanda za pokretanje AutoGen Studio UI
CMD ["autogenstudio", "ui", "--port", "8081"]
