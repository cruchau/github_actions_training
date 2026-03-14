# github-actions-demo
This is a repo for building out Github Actions and Tricks.

## Themes 
This repo also surface key concepts of CI/CD develoment: 
- Makefile with install, lint, and test
- .github/workflows/*.yml for github actions
- dockerfile and the ECS
- buildspec.yml to use AWS CodeBuilt
- locust libraire for full CI/CD pipelines

## To use my project you can do this

Create a virtualenv
```python3 -m venv ~/.github-actions-demo```

Source it
```source ~/.github-actions-demo/bin/activate```

# CI/CD Pipeline Diagram

```mermaid
flowchart TD
    A[Developer] --> B[GitHub Repository]
    B --> C[GitHub Actions Workflow]
    C --> D[GitHub Actions Runner]
    D --> D1[Checkout code]
    D --> D2[Install dependencies]
    D --> D3[Run Makefile commands]
    D3 --> E[AWS CodeBuild]
    E --> E1[Install dependencies (buildspec)]
    E --> E2[Pre-build steps (buildspec)]
    E --> E3[Build commands (buildspec)]
    E --> E4[Post-build steps (buildspec)]
    E4 --> F[Artifacts / Output]
    F --> F1[Test results]
    F --> F2[Built artifacts]
    F --> F3[Logs]
    F --> G[Feedback to Developer]
```