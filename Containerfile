FROM alpine:latest

RUN apk add --no-cache tor && \
    sed "1s/^/SocksPort 0.0.0.0:9050\n/" /etc/tor/torrc.sample > /etc/tor/torrc
RUN chown -R tor /etc/tor

VOLUME /etc/tor/
VOLUME /var/lib/tor/

USER tor

EXPOSE 9050 9051

ENTRYPOINT ["tor"]