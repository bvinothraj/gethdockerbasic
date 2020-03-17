FROM ethereum/client-go
WORKDIR /root/eth
ADD keystore keystore/
ADD genesis.json .
ADD pp.txt .
ADD start.sh .
EXPOSE 8501 30311
RUN ["chmod", "+x", "/root/eth/start.sh"]
ENTRYPOINT ["/bin/sh", "/root/eth/start.sh"]