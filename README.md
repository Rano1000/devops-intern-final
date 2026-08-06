# DevOps Intern Final Assessment

> A practical DevOps workflow demonstrating Git, Linux scripting, Docker, CI/CD with GitHub Actions, Nomad deployment, and Grafana Loki monitoring.

![GitHub Actions](https://github.com/Rano1000/devops-intern-final/actions/workflows/ci.yml/badge.svg)

---

# Author

**Name:** Mubarak Ibrahim Rano

**Email:** ibrahimranom@gmail.com

**Date:** August 2026

---

# Project Overview

This repository contains my submission for the **DevOps Intern Final Assessment**.

The objective of this project is to demonstrate fundamental DevOps skills by building a complete workflow using open-source tools.

The project covers:

- Git & GitHub
- Linux Shell Scripting
- Docker Containerization
- GitHub Actions CI/CD
- HashiCorp Nomad Deployment
- Grafana Loki Monitoring

Each stage builds upon the previous one, simulating a simple but realistic DevOps pipeline.

---

# Technologies Used

- Git
- GitHub
- GitHub Actions
- Bash
- Linux
- Docker
- Python 3.12
- HashiCorp Nomad
- Grafana Loki

---

# Repository Structure

```
devops-intern-final
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── monitoring/
│   └── loki_setup.txt
│
├── nomad/
│   └── hello.nomad
│
├── scripts/
│   └── sysinfo.sh
│
├── hello.py
├── Dockerfile
├── README.md
└── .gitignore
```

---

# Project Objectives

This project demonstrates the ability to:

- Use Git for version control.
- Host source code on GitHub.
- Write Linux shell scripts.
- Containerize applications with Docker.
- Build an automated CI pipeline.
- Deploy workloads using Nomad.
- Configure basic monitoring using Grafana Loki.

---

# Step 1 – Git & GitHub

A public GitHub repository was created and initialized.

The repository includes:

- README.md
- hello.py
- Git history
- Multiple commits

Repository:

```
https://github.com/Rano1000/devops-intern-final
```

---

# Step 2 – Linux Shell Scripting

A Linux shell script was created inside the **scripts** directory.

File:

```
scripts/sysinfo.sh
```

The script displays:

- Current user
- Current date
- Disk usage

Run:

```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

Example Output

```
Current user:
user

Current date:
Thu Aug 6 ...

Disk usage:
Filesystem Size Used Avail Use%
...
```

---

# Step 3 – Docker

The Python application was containerized using Docker.

Dockerfile:
```dockerfile
FROM python:3.12-slim

WORKDIR /app


CMD ["python","hello.py"]
```

## Build
```bash
docker build -t devops-hello:1.0 .
```
## Run

```bash
```

Expected Output

```
Hello, DevOps!
```
---

# Step 4 – GitHub Actions CI/CD


Workflow file:
```
.github/workflows/ci.yml
```

Pipeline Steps
1. Checkout repository
2. Install Python 3.12
3. Execute
```bash
python hello.py
```
Every successful workflow produces a green status check on GitHub.

---

# Step 5 – Nomad Deployment


Location

```
nomad/hello.nomad
```

Run

```bash
nomad job run nomad/hello.nomad

Configuration

- Service Job
- Docker Driver
- CPU Allocation
- Memory Allocation

---

# Step 6 – Grafana Loki Monitoring

Grafana Loki was deployed locally using Docker.

Start Loki

```bash
docker run -d \
--name loki \
-p 3100:3100 \
grafana/loki:latest
```

Verify

```bash
docker ps
```

Check Readiness

```bash
curl http://localhost:3100/ready
```

Expected

```
ready
```

View Logs

```bash
docker logs loki
```

Additional setup notes are available in:

```
monitoring/loki_setup.txt
```

---

# How To Run This Project

Clone the repository

```bash
git clone https://github.com/Rano1000/devops-intern-final.git
```

Enter the directory

```bash
```
cd devops-intern-final
```

Run the Python application

```bash
A Nomad job specification was created.
python hello.py
```

Run the Linux script

```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh

```

Build Docker image

```bash
docker build -t devops-hello:1.0 .
```

Run Docker container

```bash
docker run --rm devops-hello:1.0

```

Execute Nomad Job


```bash
nomad job run nomad/hello.nomad
```

---


# CI/CD

Every push to the **main** branch automatically triggers:
A GitHub Actions workflow automatically executes the Python application whenever code is pushed to the **main** branch.

- Repository Checkout
- Python Setup
- Script Execution


This verifies that every commit remains functional.

---
docker run --rm devops-hello:1.0

# Monitoring

Grafana Loki was configured to demonstrate centralized log collection.


The project includes:

- Loki Deployment
- Readiness Verification

- Container Log Inspection

---

# Screenshots

The following screenshots were captured during development.
COPY hello.py .

- GitHub Repository
- Docker Build
- Docker Container Output
- GitHub Actions Success
- Docker PS
- Loki Logs
- Loki Ready Endpoint

---

# Lessons Learned

This project strengthened my practical understanding of:

- Git workflows
- Linux command-line usage
- Docker image creation
- Container execution
- GitHub Actions automation
- Nomad job specifications
- Container monitoring using Grafana Loki

---

# Future Improvements

Potential enhancements include:

- Deploying the application to Kubernetes.
- Integrating Prometheus metrics.
- Adding Grafana dashboards.
- Using Docker Compose.
- Implementing Terraform infrastructure provisioning.
- Deploying to Azure or AWS.
- Integrating MLflow experiment tracking.

---

# Acknowledgements

This project was completed as part of the DevOps Intern Final Assessment and demonstrates the practical application of modern DevOps tools and workflows.

---

# License

This repository is intended for educational and assessment purposes.

---

## Contact

**Mubarak Ibrahim Rano**

Email:

```
ibrahimranom@gmail.com
```

GitHub:

```
https://github.com/Rano1000
```
