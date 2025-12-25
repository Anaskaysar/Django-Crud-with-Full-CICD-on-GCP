# Django CRUD Application — Dockerized & Deployed on Google Cloud Run

**Live Application:**  
👉 https://django-crud-cicd-wqjxcth5bq-uc.a.run.app/

---

## 📌 Project Overview

This project is a **Django-based CRUD application** built to understand and practice the **complete backend deployment lifecycle** — not just development.

The goal was to move beyond “it works on my machine” and gain **real-world experience** with:

- Docker containerization
- Production-ready Django configuration
- Google Cloud Run deployment
- Environment-based configuration
- Debugging real production failures

This repository intentionally reflects **real engineering challenges** faced during deployment and how they were resolved.

---

## 🎯 Project Goals

- Build a functional Django CRUD application
- Containerize the application using Docker
- Run the application with **Gunicorn** (production WSGI server)
- Deploy the application to **Google Cloud Run**
- Debug and fix real deployment-time failures
- Prepare the project for CI/CD and further production hardening

---

## 🛠️ Tech Stack

| Layer            | Technology                  |
| ---------------- | --------------------------- |
| Backend          | Django                      |
| Database         | SQLite (development & demo) |
| WSGI Server      | Gunicorn                    |
| Static Files     | WhiteNoise                  |
| Containerization | Docker                      |
| Cloud Platform   | Google Cloud Run            |
| Python           | 3.12 (Docker), 3.14 (Local) |

---

## 🧱 Application Features

- Django project: `crudproject`
- Django app: `items`
- CRUD functionality:
  - Create items
  - View item list
  - Delete items
- Django Admin enabled
- Server-side rendered templates
- Basic CSS styling

---

## 🐳 Docker & Containerization

The application is fully containerized using Docker and designed to run **identically** locally and in Cloud Run.

### Key Container Characteristics

- Python slim base image
- Gunicorn as the entrypoint
- Environment-driven configuration
- Cloud Run–compatible port binding (`$PORT`)
- Static file handling via WhiteNoise

---

## ☁️ Google Cloud Run Deployment

### Deployment Model

- Source-based deployment using Cloud Build
- Stateless container runtime
- Public HTTPS endpoint
- Environment variables managed via Cloud Run UI

### Production Environment Variables

Configured in Cloud Run:

- `DEBUG`
- `SECRET_KEY`
- `ALLOWED_HOSTS`
- `CSRF_TRUSTED_ORIGINS`

---

## ✅ Current Status (Deployment Milestone)

- ✅ Django CRUD application works correctly in **local development**
- ✅ Application is fully **Dockerized**
- ✅ Gunicorn runs Django in production mode
- ✅ Application is **successfully deployed to Google Cloud Run**
- ✅ All major runtime errors (400 / 500) have been resolved
- ✅ Application is publicly accessible via HTTPS

**Live URL:**  
👉 https://django-crud-cicd-wqjxcth5bq-uc.a.run.app/

---

## 📄 Deployment Debugging & Error Analysis

Several real-world production issues were encountered and resolved during deployment.

A detailed breakdown of the debugging journey is intentionally preserved in a separate document:

👉 **DEPLOY_ERROR.md**

This file is kept separate for long-term learning and reference.

---

## 🧠 Key Learnings

- Local success does not guarantee production success
- Containers start with a clean filesystem every time
- Database migrations must be explicitly handled
- Cloud Run is stateless
- Environment variables are critical in production
- Logs are the primary debugging tool in cloud environments

---

## ⏭️ Next Steps (Planned Work)

### 1️⃣ CI/CD Pipeline (Next Major Goal)

- Connect GitHub repository to Cloud Run
- Enable automatic build & deploy on push
- Introduce branch-based deployment flow

### 2️⃣ Database Persistence

- Replace SQLite with **Cloud SQL (PostgreSQL)**
- Ensure data persistence across container restarts
- Handle migrations safely in production

### 3️⃣ Production Hardening

- Improve logging configuration
- Add health check endpoint
- Harden security-related settings
- Improve error handling and observability

---

## 🎯 Project Intent

This project is designed to simulate **real backend engineering work**, including:

- Deployment failures
- Environment mismatches
- Cloud-specific behavior
- Debugging production-only issues

Each phase is completed, stabilized, and documented before moving forward.
