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

[Developer]
     |
     | Push code to GitHub
     v
[GitHub Repository]
     |
     | Trigger GitHub Actions workflow (on push/PR)
     v
[GitHub Actions Runner]
     |
     | 1️⃣ Checkout code
     | 2️⃣ Install dependencies
     | 3️⃣ Run Makefile commands (build/test)
     v
[Optional: AWS CodeBuild]
     |
     | Execute buildspec.yml
     | - install
     | - pre_build
     | - build
     | - post_build
     v
[Artifacts / Output]
     |
     | - Test results
     | - Built artifacts
     | - Logs
     v
[Feedback to Developer]