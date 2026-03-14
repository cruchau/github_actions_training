# GitHub Actions Demo  

This repository demonstrates a **CI/CD pipeline** using **GitHub Actions**, **AWS CodeBuild**, **ECR**, and **ECS**, with optional S3 artifact storage. It serves as a reference for building production-ready pipelines.  

---

## 📝 Project Themes

This repo covers key CI/CD concepts:

- **Makefile** with commands: `install`, `lint`, `test`, `build`  
- **GitHub Actions workflows** (`.github/workflows/*.yml`)  
- **Dockerfile** for containerized applications  
- **AWS CodeBuild** with `buildspec.yml`  
- **AWS ECR & ECS** for container deployment  
- **Optional S3 storage** for artifacts and logs  

---

## ⚡ Setup Instructions

1. **Create a virtual environment**

```bash
python3 -m venv ~/.github-actions-demo
```

2. **Activate the virtual environment**

```bash
source ~/.github-actions-demo/bin/activate
```

3. **Install dependencies**

```bash
pip install -r requirements.txt
```

4. **Run Makefile commands**

```bash
make install
make lint
make test
```

---

## 🚀 CI/CD Pipeline Diagram

This diagram shows the full flow from **code push → GitHub Actions → CodeBuild → ECR → ECS**, including artifact generation:

```mermaid
flowchart TD
    A[Developer] --> B[GitHub Repository]
    B --> C[GitHub Actions Workflow]
    C --> D[GitHub Actions Runner]
    D --> D1[Checkout code]
    D --> D2[Install dependencies]
    D --> D3[Run Makefile commands]
    D3 --> E[AWS CodeBuild]
    E --> E1[Install dependencies]
    E --> E2[Pre-build steps (lint, login to ECR)]
    E --> E3[Build Docker image]
    E --> E4[Post-build: push image to ECR]
    E4 --> F[AWS ECS Deployment]
    E4 --> G[S3 Artifacts / Logs]
    F --> H[Running containers in ECS]
    G --> I[Store logs/artifacts in S3]
    H --> J[Application live]
```

---

## 📂 Key Files in the Repo

| File | Purpose |
|------|---------|
| `Makefile` | Defines `install`, `lint`, `test`, `build` commands |
| `.github/workflows/*.yml` | GitHub Actions workflows |
| `Dockerfile` | Containerizes the application |
| `buildspec.yml` | AWS CodeBuild instructions for build/test/docker |
| `requirements.txt` | Python dependencies |

---

## 🔑 Notes

- **GitHub Actions** handles automatic builds and tests on push or PR.  
- **AWS CodeBuild** runs builds, tests, and Docker image creation.  
- **ECR** stores Docker images.  
- **ECS** deploys Docker images as running containers.  
- **S3 (optional)** can store logs, artifacts, or test reports.  
- The setup can be extended to **ECS services, Lambda, or other AWS deployments**.  

---

This README now gives a **clear professional overview** of your CI/CD pipeline including ECS and S3 integration.  

---

If you want, I can also make a **more visually compact Mermaid diagram** showing **GitHub Actions and CodeBuild as parallel stages**, which looks even cleaner in GitHub README.  

Do you want me to do that?