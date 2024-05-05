ARG API_KEY

WORKDIR /home/perplexica
RUN apk update && apk add git


RUN git clone https://github.com/ItzCrazyKns/Perplexica.git .
RUN mv sample.config.toml config.toml

#COPY src /home/perplexica/src
#COPY tsconfig.json /home/perplexica/
#COPY sample.config.toml /home/perplexica/config.toml
#COPY package.json /home/perplexica/
#COPY yarn.lock /home/perplexica/

RUN sed -i "s|SEARXNG = \".*\"|SEARXNG = \"${SEARXNG_API_URL}\"|g" /home/perplexica/config.toml

# Uslovno izvršavanje RUN komande
RUN if echo "$API_KEY" | grep -q "^sk-"; then \
      sed -i "s|OPENAI = \".*\"|OPENAI = \"${API_KEY}\"|g" /home/perplexica/config.toml; \
    elif echo "$API_KEY" | grep -q "^gsk_"; then \
      sed -i "s|GROQ = \".*\"|GROQ = \"${API_KEY}\"|g" /home/perplexica/config.toml; \
    fi




RUN yarn install
RUN yarn build

CMD ["yarn", "start"]
