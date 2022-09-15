FROM klakegg/hugo:0.104.3-ext-alpine

RUN apk update && apk add --no-cache git && \
    apk add --no-cache make && \
    apk add --no-cache bash && \
    apk add --no-cache gcc && \
    apk add --no-cache libc-dev && \
    apk add --no-cache binutils-gold

WORKDIR /workspace

COPY . .

RUN git submodule update --init

ENTRYPOINT ["hugo", "server"]