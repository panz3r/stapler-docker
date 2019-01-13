FROM python:2-alpine

LABEL maintainer="Mattia Panzeri <mattia.panzeri93@gmail.com>"

RUN pip install stapler

VOLUME [ "/data/input", "/data/output" ]

WORKDIR /data

COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]