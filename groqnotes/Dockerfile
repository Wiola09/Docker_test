# Koristimo oficijelni Python image kao bazu
FROM python:3.11-slim

# Postavljanje radnog direktorijuma
WORKDIR /app

# Instalacija potrebnih sistemskih paketa
RUN apt-get update && apt-get install -y \
    git \
    libgirepository1.0-dev \
    libcairo2-dev \
    pkg-config \
    python3-dev \
    gcc \
    libpango1.0-dev \
    && apt-get clean

# Kloniranje repozitorijuma
RUN git clone https://github.com/bklieger/groqnotes.git

# Prelazak u direktorijum repozitorijuma
WORKDIR /app/groqnotes

# Postavljanje environment varijable za Groq API ključ
# Zameniti 'your_api_key_here' sa stvarnim API ključem
#ENV GROQ_API_KEY=test
# Kreiranje i aktivacija virtualnog okruženja, te instalacija zavisnosti
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Eksplicitno aktiviranje virtualnog okruženja i pokretanje Streamlit aplikacije
CMD ["/bin/bash", "-c", ". venv/bin/activate && streamlit run main.py"]