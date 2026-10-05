FROM python:3.12-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN python -m pip install --no-cache-dir -r requirements.txt

COPY main.py .

EXPOSE 4000

CMD ["python", "main.py", "--address", "0.0.0.0", "--port", "4000"]
