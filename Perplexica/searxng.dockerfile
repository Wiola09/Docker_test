FROM searxng/searxng
RUN apk update && apk add git
RUN git clone https://github.com/ItzCrazyKns/Perplexica.git .

COPY searxng-settings.yml /etc/searxng/settings.yml
