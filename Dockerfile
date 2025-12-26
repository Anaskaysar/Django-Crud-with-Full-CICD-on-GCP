FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . .

# Change to the directory where manage.py actually is
WORKDIR /app/crudproject

# Run migrations to create database tables
RUN python manage.py migrate --noinput

# Collect static files for WhiteNoise
RUN python manage.py collectstatic --noinput

EXPOSE 8080

# Use PORT environment variable from Cloud Run
CMD exec gunicorn crudproject.wsgi:application --bind 0.0.0.0:$PORT --workers 1 --threads 8 --timeout 0