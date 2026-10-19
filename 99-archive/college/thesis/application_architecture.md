# Application architecture

```mermaid
graph TD
    subgraph Client
        U[User] --> B[Browser]
    end

    subgraph "Frontend service"
        F[Nginx container :80]
    end

    subgraph "Backend services"
        D[Django container :8000]
        P[PostgreSQL container :5432]
    end

    B -->|"Loads static assets (HTML, CSS and JS)"| F
    B -->|Makes HTTP API requests| D
    D -->|Connects via Docker network| P
```

## Client

- User: the person interacting with the application.

- Browser: the software on the user's computer (like Chrome or Firefox) that accesses the application.

## Frontend service

- Nginx container: this container holds the static, built files of the React + Vite project. It runs a lightweight Nginx web server to efficiently send these files (HTML, CSS, JavaScript) to the user's browser when they visit the site. It listens on port 80, the standard port for web traffic.

## Backend services

- Django container: this is the core of the application's logic. It runs the Python/Django code, exposes an API and processes the business logic. It listens on port 8000 for API requests from the browser.

- PostgreSQL container: this container runs the PostgreSQL database server. It is responsible for storing and retrieving all the application's data. It listens on port 5432.

## Communication flow

1. The user's browser first requests the main page from the Nginx container.

2. The Nginx container serves the static HTML, CSS and JavaScript files, which load in the browser.

3. As the user interacts with the application, the JavaScript running in the browser makes API calls to the Django container to fetch or save data.

4. The Django container processes these requests, communicating with the PostgreSQL container over the internal Docker network to perform database operations.
