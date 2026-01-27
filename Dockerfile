FROM python:3.11-slim

RUN useradd -m appuser
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app app

RUN chown -R appuser:appuser /app
USER appuser

EXPOSE 8085

CMD ["gunicorn", "-b", "0.0.0.0:8085", "app.main:app"]