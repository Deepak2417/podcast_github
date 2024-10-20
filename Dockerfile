FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.13 \
    git

RUN python -m pip3

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
