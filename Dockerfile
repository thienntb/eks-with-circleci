FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY requirements.txt .

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]