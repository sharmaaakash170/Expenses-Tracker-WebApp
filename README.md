# Expenses Tracker Web Application – DevOps Enabled

This repository is a **forked and DevOps-enhanced version** of the original **Expenses Tracker Web Application** built using **Spring Boot**.

👉 **Original Repository:**  
https://github.com/mohamed0sawy/Expenses-Tracker-WebApp

My contribution focuses on **DevOps practices**, including **Dockerization, Docker Compose orchestration, and CI/CD automation**, making the application production-ready and easier to deploy.

---

## 📌 Table of Contents
- Project Overview
- Original vs Forked Repository
- Architecture
- Tech Stack
- DevOps Enhancements
- Project Structure
- Prerequisites
- Setup & Run (Docker)
- Docker Compose
- CI/CD Pipeline
- Environment Variables
- Build & Deployment Flow
- Cleanup
- Best Practices
- License & Credits

---

## 📖 Project Overview

The Expenses Tracker Web Application helps users:
- Track daily expenses
- Categorize spending
- View summaries via a web interface

The **core application** was developed using **Spring Boot + MySQL + Thymeleaf**.  
This fork focuses on **DevOps automation and deployment improvements**.

---

## 🔁 Original vs Forked Repository

### Original Repo (Application Focus)
- Spring Boot backend
- Spring MVC + Thymeleaf frontend
- Spring Security
- MySQL database
- Monolithic setup
- Manual run (local IDE / Maven)

### This Fork (DevOps Focus)
✅ Dockerized application  
✅ Docker Compose for multi-container orchestration  
✅ CI/CD pipeline for automated builds  
✅ Environment-based configuration  
✅ Production-style deployment workflow  

---

## 🧱 Architecture

```
+-------------------+       +------------------+
| Spring Boot App   | ----> | MySQL Database   |
| (Docker)          |       | (Docker)         |
+-------------------+       +------------------+
        |
        |
   CI/CD Pipeline
 (Automated Build)
```

---

## 🛠 Tech Stack

### Application
- Java
- Spring Boot
- Spring MVC
- Spring Security
- Spring Data JPA
- Thymeleaf
- MySQL

### DevOps
- Docker
- Docker Compose
- CI/CD (GitHub Actions / Jenkins)
- Maven
- Git & GitHub

---

## 🚀 DevOps Enhancements (My Contribution)

### 1️⃣ Dockerization
- Created a **Dockerfile** to containerize the Spring Boot application
- Uses a clean, reproducible build environment
- Ensures consistency across dev, test, and prod

### 2️⃣ Docker Compose
- Added `docker-compose.yml` to:
  - Run Spring Boot app container
  - Run MySQL database container
- Simplifies local and server deployments
- Handles service networking automatically

### 3️⃣ CI/CD Pipeline
- Added CI/CD configuration to:
  - Checkout source code
  - Build application using Maven
  - Build Docker image
  - Validate container build
- Enables automated testing & deployment readiness

---

## 📂 Project Structure

```
Expenses-Tracker-WebApp/
├── src/                     # Application source code
├── Dockerfile               # Docker image build
├── docker-compose.yml       # Multi-container orchestration
├── .github/workflows/       # CI/CD pipeline (if GitHub Actions)
│   └── ci.yml
├── pom.xml                  # Maven configuration
├── application.properties   # App configuration
└── README.md
```

---

## ✅ Prerequisites

- Git
- Docker
- Docker Compose
- Java 17+ (optional, for local dev)
- Maven (optional)

---

## 🐳 Run Using Docker

### Clone Repository
```bash
git clone https://github.com/sharmaaakash170/Expenses-Tracker-WebApp.git
cd Expenses-Tracker-WebApp
```

### Start Application
```bash
docker-compose up --build
```

### Access Application
```
http://localhost:8080
```

---

## 🐋 Docker Compose Services

- **app** → Spring Boot application
- **mysql** → MySQL database

Docker Compose handles:
- Container networking
- Environment variable injection
- Service startup order

---

## 🔁 CI/CD Pipeline

The CI/CD pipeline automates:
- Source checkout
- Maven build
- Docker image build
- Build validation

This ensures:
- Faster feedback
- Fewer manual errors
- Consistent deployments

---

## 🔐 Environment Variables

| Variable | Description |
|--------|------------|
| DB_HOST | Database hostname |
| DB_PORT | Database port |
| DB_NAME | Database name |
| DB_USER | Database username |
| DB_PASSWORD | Database password |

---

## 📦 Build & Deployment Flow

```
Developer Push
     ↓
CI Pipeline Triggered
     ↓
Maven Build
     ↓
Docker Image Build
     ↓
Ready for Deployment
```

---

## 🧹 Cleanup

```bash
docker-compose down
docker system prune
```

---

## 📌 Best Practices Followed

- Infrastructure as code
- Containerized deployments
- Environment-based configs
- Reproducible builds
- CI/CD automation

---

## 📜 License & Credits

- Original Application: © Mohamed Osawy  
- DevOps Enhancements & Fork: © Aakash Sharma  

This project is for **learning, DevOps practice, and portfolio demonstration**.
