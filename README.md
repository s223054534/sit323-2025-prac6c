# SIT323 Task 6.2C – Kubernetes Interaction

## Overview

This task builds upon Task 6.1P by deploying the existing Node.js application to a Kubernetes cluster and interacting with it using `kubectl`. The goal is to verify deployment, forward traffic to the service, and access the application via the browser.

---

## Tech Stack

- Node.js  
- Docker  
- Kubernetes (via Docker Desktop)  
- kubectl CLI  

---

## Setup & Execution Steps

### 1. Build Docker Image 

```bash
docker build -t s223054534/sit323-node-app:latest .
docker push s223054534/sit323-node-app:latest
```

### 2. Deploy to Kubernetes

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 3. Verify Deployment

```bash
kubectl get pods
kubectl get services
```

### 4. Access Application Locally

```bash
kubectl port-forward service/node-app-service 3000:3000
```

Then open your browser and go to:  
[http://localhost:3000](http://localhost:3000)
