# Kubernetes Security Implementation

This repository contains Kubernetes configuration files that implement key security measures in a cluster, including Role-Based Access Control (RBAC), isolated environments, limiting pod-to-pod communication.

## Files Overview

### 1. `rbac.yaml`

- Ensures that the go-app-sa service account has controlled access to pods within its namespace, following the principle of least privilege

### 2. `namespace.yaml`

- Creates a new namespace named go-app to isolate and manage resources related to an application.
- Defines a ServiceAccount named go-app-sa within the go-app namespace, providing an identity for Pods in that namespace to securely access the Kubernetes API and other resources

### 3. `network-policy.yaml`

- Creates a NetworkPolicy named restrict-pod-communication in the go-app namespace.
- It restricts incoming traffic to Pods labeled app: go-http-server, allowing only other Pods with the same label to communicate with them.




