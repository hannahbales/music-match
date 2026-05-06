# Music Match
Developer: Hannah Bales

Project: A musician matching app that works similarly to Tinder with quick profile views, swiping right or left, and filtering options. Requires an API, which I have built using Go and Gin by creating routes, handlers and db access.

Backend API for a Tinder-style musician matchmaking app

Built with:
- Go (Gin)
- PostgreSQL (Docker)
- Docker

---

## Tech Stack

- Backend: Go (Gin framework)
- Database: PostgreSQL
- Containerization: Docker

---

## Local Setup

### 1. Install Docker

Download Docker Desktop:
https://www.docker.com/products/docker-desktop/

Make sure Docker is running:
```bash
docker --version
```

### 2. Start PostgresSQL Using Docker

Run the database container:
```bash
docker run --name musicmatch-postgres \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=yourpassword \
  -e POSTGRES_DB=musicmatch \
  -p 5432:5432 \
  -d postgres
```

### 3. Verify Database
Enter Postgres shell:
```bash
docker exec -it musicmatch-postgres psql -U postgres
```
List databases:
```bash
\l
```
Connect:
```bash
\c musicmatch
```

### 4. Create Users Table
```bash
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    location TEXT,
    bio TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Backend Setup
### 1. Initialize Go project
```bash
go mod init musicmatch-backend
```

### 2. Install dependencies
```bash
go get github.com/gin-gonic/gin
go get github.com/lib/pq
go get github.com/joho/godotenv
```

### 3. Environment variables
Create .env file:
```bash
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASSWORD=yourpassword
DB_NAME=musicmatch
```

### 4. Run server
```bash
go run main.go
```
Server runs on:
```bash
http://localhost:8080
```
Test endpoint:
```bash
GET /ping
```

## Useful Commands
Stop all running containers
```bash
docker stop $(docker ps -q)
```
Remove container
```bash
docker rm musicmatch-postgres
```
View logs
```bash
docker logs musicmatch-postgres
```

## Notes
- Make sure Docker is running before starting backend
- PostgreSQL must be running on port 5432
- Keep .env out of version control
