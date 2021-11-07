FROM alpine:latest

ARG USER=toruser
ARG UID=1000

RUN apk add --no-cache tor
RUN adduser --disabled-password --gecos "" --uid "$UID" "$USER"

VOLUME /etc/tor/
VOLUME /var/lib/tor/

EXPOSE 9050 9051 29050 29051

# Run tor as non-root user
USER $USER

ENTRYPOINT ["tor"]
