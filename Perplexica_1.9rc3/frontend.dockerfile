FROM node:alpine

ARG NEXT_PUBLIC_WS_URL
ARG NEXT_PUBLIC_API_URL
ENV NEXT_PUBLIC_WS_URL=${NEXT_PUBLIC_WS_URL}
ENV NEXT_PUBLIC_API_URL=${NEXT_PUBLIC_API_URL}
ARG OPENAI
ENV OPENAI=${OPENAI}

WORKDIR /home/perplexica
RUN apk update && apk add git

# Kloniranje repozitorijuma
RUN git clone --depth 1 --branch v1.9.0-rc3 https://github.com/ItzCrazyKns/Perplexica.git .

#RUN mv sample.config.toml config.toml
WORKDIR ./ui

#COPY ui /home/perplexica/

RUN yarn install
RUN yarn build

CMD ["yarn", "start"]
