FROM ipfs/go-ipfs:v0.9.1

COPY container_daemon /usr/local/bin/start_ipfs

RUN chmod 0755 /usr/local/bin/start_ipfs

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/start_ipfs"]

CMD ["daemon"]
