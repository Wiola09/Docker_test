FROM node:alpine

ARG SEARXNG_API_URL

ARG OPENAI_API_KEY

WORKDIR /home/perplexica
RUN apk update && apk add git


# Kloniranje repozitorijuma
RUN git clone --depth 1 --branch v1.8.0 https://github.com/ItzCrazyKns/Perplexica.git .

RUN mv sample.config.toml config.toml

#COPY src /home/perplexica/src
#COPY tsconfig.json /home/perplexica/
#COPY sample.config.toml /home/perplexica/config.toml
#COPY package.json /home/perplexica/
#COPY yarn.lock /home/perplexica/

RUN sed -i "s|SEARXNG = \".*\"|SEARXNG = \"${SEARXNG_API_URL}\"|g" /home/perplexica/config.toml
RUN sed -i "s|OPENAI = \".*\"|OPENAI = \"${OPENAI_API_KEY}\"|g" /home/perplexica/config.toml


RUN yarn install
RUN yarn build

CMD ["yarn", "start"]
