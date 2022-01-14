FROM debian:latest

RUN echo "Y" | apt update
RUN echo "Y" | apt install anubis findomain-linux curl python3

COPY run.sh /
ENTRYPOINT ["bash", "run.sh"]
