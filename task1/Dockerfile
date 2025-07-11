FROM python:alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

RUN adduser -D myuser
USER myuser

EXPOSE 3000

CMD ["python", "app.py"]
