FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY crudproject/ /app/

# Collect static for WhiteNoise
RUN python manage.py collectstatic --noinput

EXPOSE 8080

CMD ["gunicorn", "crudproject.wsgi:application", "--bind", "0.0.0.0:8080"]
