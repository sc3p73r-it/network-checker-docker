## 📡 Network Checker (Alpine-based)

A lightweight Network Checker container built on Alpine Linux, designed for quick and reliable network connectivity diagnostics in Docker and Kubernetes environments.

### This image is ideal for:

Debugging network issues inside containers

Validating DNS, routing, and ICMP connectivity

On-demand troubleshooting in Kubernetes clusters (Pods, Jobs, Ephemeral containers)

## 🚀 Features

✅  Minimal image size (Alpine Linux)

✅ Includes commonly used network diagnostic tools:

✅ ping (ICMP connectivity)

✅ curl (HTTP/HTTPS testing)

✅ dig / nslookup (DNS checks via bind-tools)

✅ traceroute (network path inspection)

✅ netstat, ifconfig (basic network inspection)

Interactive shell support

Works in Docker, Docker Compose, and Kubernetes

## 🧰 Included Tools
Tool    Purpose
- ping	Test basic network connectivity
- curl	Test HTTP/HTTPS endpoints
- dig	DNS resolution testing
- nslookup	Simple DNS lookup
- traceroute	Trace network hops
- ifconfig	Interface inspection
- netstat	Port and connection inspection
- bash / sh	Interactive debugging

## 🔐 Security
- Runs as a non-root user (appuser)
- No unnecessary packages installed
- Designed for debugging only, not production workloads

## ▶️ Usage (Docker)
### Run Interactive Shell
```
docker run -it --rm sc3p73r/network-checker:latest
```

### Run with Bash
```
docker run -it --rm sc3p73r/network-checker:latest bash
```

## 🔍 Common Command Examples
### Ping a Host
```
ping example.com
```
### Test HTTP Connectivity
```
curl -I https://example.com
```
### DNS Lookup
```
dig example.com
```
### Trace Network Path
```
traceroute example.com
```
### Check Network Interface
```
ifconfig
```
