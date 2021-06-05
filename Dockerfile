
FROM    alpine:latest
RUN     apk add python3
RUN     apk add py3-pip
RUN     pip install starlette uvicorn
COPY    test.py .
EXPOSE  8000/tcp
CMD     uvicorn --host 0.0.0.0 --port 8000 test:app
