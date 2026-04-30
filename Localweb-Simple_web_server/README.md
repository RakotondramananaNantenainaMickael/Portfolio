# LocalWeb

> A lightweight HTTP server built from scratch to understand how the web works.

**Python | HTTP Protocol | Client-Server Architecture**

---

## Why This Project Exists

As a first-year IT student passionate about networking and cybersecurity, I wanted to understand what really happens when I type `http://google.com` into a browser. Instead of just reading theory, I built my own web server.

This project demonstrates my ability to:
- Learn complex concepts by building practical tools
- Write clean, documented Python code
- Understand HTTP protocol at a fundamental level
- Handle errors and edge cases professionally

---

## What I Built

A static web server that:
- Listens for HTTP requests on port 8080
- Serves HTML, CSS, and images from any directory
- Logs each request with client IP address
- Handles port conflicts and graceful shutdowns
- Runs on Linux, Windows, and macOS

**Total lines of code:** ~40 (excluding comments)

---

## Technical Deep Dive

### Core Technologies

| Technology | What I Used It For |
|------------|---------------------|
| Python `http.server` | Base HTTP handler |
| Python `socketserver` | TCP socket management |
| Python `os` | Current directory detection |
| Python `sys` | Exit codes for scripting |
| HTML/CSS | Frontend pages |

### Key Concepts I Mastered

| Concept | How I Implemented It |
|---------|----------------------|
| HTTP Methods | Handling GET requests |
| Port Numbers | Listening on 8080 (no root required) |
| Localhost | Serving at 127.0.0.1 |
| Error Codes | 200 (OK), 404 (Not Found) |
| Logging | Custom format with timestamps and IPs |
| Graceful Shutdown | Ctrl+C handler with cleanup |
| Return Codes | exit(0) for success, exit(1) for errors |

### Code Architecture
```text 
LocalWeb/
├── server.py # HTTP server with custom handler
├── index.html # Landing page
├── page2.html # Navigation example
├── style.css # Responsive styling
└── images/ # Static assets
```

---

## Code Highlight

This is the core of the server - a custom handler that logs every request:

```python
class CustomHandler(http.server.SimpleHTTPRequestHandler):
    """Custom handler with IP logging"""
    
    def log_message(self, format, *args):
        print(f"[{self.address_string()}] - {format % args}")
    
    def handle_error(self, request, client_address):
        print(f"Connection error from {client_address}")
```
Three lines that add professional logging to the built-in server.

## Results and Demonstration
### Terminal Output
```text
========================================
LOCALWEB - Static web server
========================================
Address : http://localhost:8080
Directory : /home/user/LocalWeb

Press Ctrl+C to stop
========================================
[127.0.0.1] - GET / HTTP/1.1
[127.0.0.1] - GET /style.css HTTP/1.1
[127.0.0.1] - GET /page2.html HTTP/1.1
```

### Browser Output
Users see a fully styled webpage with: 
+ Welcome message
+ Learning checklist
+ Working navigation between pages

### Error Handling Demonstrated 
|Scenario |System Response|
|---------|---------------|
|Port already in use| Error: {e} + exit code 1|
|Ctrl+C during operation| Server stopped + clean exit|
| Missing file request| Automatic 404 response via SimpleHTTPRequestHandler|

## How This Fits My Carrer Goals 
I am pusruing a career in network administration or cybersecurity. this project shows:  
+ For networking roles: I understand HTTP, ports, and client-server
+ For security roles: I know how attackers could target web servers 
+ For DevOps roles: I can build and understand basic serving infrastructure

## Installation and Testing
```bash
# Clone or create directory
git clone https://github.com/yourusername/Portfolio
cd Portfolio/LocalWeb

# Run the server
python3 server.py

# Open your browser to
http://localhost:8080
```
No dependencies. Works with any standard Python 3 installation.

## What I Would I Improve With More Time
+ Add command-line arguments for port and directory
+ Implement basic logging to file instead of console
+ Add support for HTTP methods beyond GET
+ Create a simple configuration file
+ Write unit tests for the server
+ Containerize with DOcker

## Author
RAKOTONDRAMANANA Nantenaina Mickaël 
