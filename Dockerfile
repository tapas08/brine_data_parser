FROM --platform=linux/x86_64 python:3.9-slim-buster

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

ADD ./data ./data
COPY data_parser.py .
COPY test.py .

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
