# Django CRUD App with Docker, CI/CD, and GCP Deployment

## 📌 Project Overview

This project is a **learning-focused Django CRUD application** created to understand:

- Django project and app structure
- CRUD operations using Django ORM
- Static files handling in development vs production
- Containerization using Docker
- Running Django with Gunicorn
- Preparing an application for deployment on **Google Cloud Platform (Cloud Run)**

The emphasis of this project is Django mastery, but understanding **how applications move from local development to containerized, deployable cloud services**.
---

## 🎯 End Goal

The final goal of this project is to:

- Build a working Django CRUD application
- Containerize it using Docker
- Run it using Gunicorn (production-grade WSGI server)
- Deploy it to **Google Cloud Run**

> Cloud deployment will be completed in the next phase.

---

## 🛠️ Tech Stack

- **Backend:** Django 6.0
- **Database:** SQLite (local learning)
- **WSGI Server:** Gunicorn
- **Containerization:** Docker
- **Cloud Target:** Google Cloud Run
- **Python:** 3.12 (Docker) / 3.14 (local)

---

## 🧭 Steps Followed

### 1. Django Setup
- Created Django project `crudproject`
- Created app `items`
- Configured URLs and verified development server

### 2. CRUD Implementation
- Created `Item` model (name, description, created_at)
- Registered model in Django Admin
- Implemented:
  - Create item
  - List items
  - Delete item

### 3. Templates & UI
- Used Django templates
- Created `home.html`
- Displayed item list and form on single page

### 4. Static Files & Styling
- Added CSS styling
- Configured static file loading
- Used `{% load static %}` correctly
- Learned difference between dev server and Gunicorn static handling

### 5. Git & Environment
- Used virtual environment
- Generated `requirements.txt`
- Used `development` branch
- Added `.gitignore`

---

## ⚠️ Issues Faced & Solutions

### Externally Managed Environment
- **Cause:** Homebrew Python restrictions
- **Fix:** Used virtual environment

### 404 on Root URL
- **Cause:** Missing root URL mapping
- **Fix:** Included `items.urls` properly

### Static Files Not Loading
- **Cause:** Incorrect static paths
- **Fix:** Correct folder structure + `collectstatic`

### Port Already in Use
- **Cause:** Django server and Gunicorn running together
- **Fix:** Identified process using `lsof` and stopped it

### Dockerfile Not Found
- **Cause:** File named incorrectly (`Docerfile`)
- **Fix:** Renamed to `Dockerfile`

---

## 🐳 Dockerization

### Build Image
```bash
docker build -t django-crud:local .
```

### Run Container
```bash
docker run -p 8080:8080 django-crud:local
```

### Result
- Gunicorn starts successfully
- Django app runs inside Docker
- Application is Cloud Run ready

---

## ✅ Current Status

- CRUD fully working
- UI styled and functional
- Docker image built successfully
- Gunicorn running
- Ready for GCP deployment

---

## ⏭️ Next Steps

- Push image to Google Artifact Registry
- Deploy to Google Cloud Run
- Configure IAM & service access
- Add CI/CD pipeline later

---

## 🧠 Key Learning

This project focuses on **real-world engineering problems**:
- Understanding errors
- Debugging step-by-step
- Learning production behavior early

The README will be continuously updated as the project evolves.
