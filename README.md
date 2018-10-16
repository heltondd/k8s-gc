# K8S-GC

## Kubernetes DaemonSet - Garbage Docker images

[![Build Status](https://dev.azure.com/heltondd/k8s-gc/_apis/build/status/k8s-gc-buid)](https://dev.azure.com/heltondd/k8s-gc/_build/latest?definitionId=2)

## Prerequisites

- Kubernetes 1.8+ or newer

## Configuration

The following tables lists the configurable parameters of the [Kubernetes DaemonSet](k8s-gc-daemonset.yaml)  

| Environment | Description                                    | Default | Unit    |
| ----------- | ---------------------------------------------- | ------- | ------- |
| `INTERVAL`  | Interval to execute garbage                    | `86400` | seconds |
| `UNTIL`     | Consider images created more than xx hours ago | `24h`   | hours   |

## Install DaemonSet

```bash
kubectl apply -f k8s-gc-daemonset.yaml
```

Your deploy should look like this if everything works fine:

```bash
kubectl get pod
NAME                READY   STATUS    RESTARTS   AGE
k8s-gc-bkpdl        1/1     Running   0          1m
```

## Uninstall DaemonSet

```bash
kubectl delete -f k8s-gc-daemonset.yaml
```