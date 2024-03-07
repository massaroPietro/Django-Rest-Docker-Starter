# Django-Rest-Docker-Starter

## Overview

🚀 Speed up your project's development and production with our comprehensive GitHub template! This slightly opinionated local dev full stack template combines Docker, Django, Postgres, Vue.js, and Nginx—all ready to go. With everything set up, you can accelerate your development process, spending less time on setup and more time coding. Whether you're starting a new project or integrating into an existing one, our template offers easy integration, boosting your workflow efficiency.

💼 Accelerate Development: Spend less time setting up and more time coding.

🛠️ Easy Integration: Seamlessly add to existing projects or start new ones.

Get started and supercharge your workflow today!

## Technologies Used

- Docker
- Django
- Postgres
- Vue.js
- Nginx
- Gunicorn

## Features

- Complete setup for Docker, Django, Postgres, Vue.js, and Nginx.
- Accelerated development process.

---

Feel free to use this project as a template or fork it according to your needs. If you encounter any issues or have suggestions for improvements, please open an issue or pull request. Happy coding!

## Setup and Usage

### Running Locally

To run the project locally for development, you can use the provided `local.yml` Docker Compose file along with the `Makefile`.

```bash
make run
```

| Container  | Service | Host Port | Docker Port |
| ---------- | ------- | --------- | ----------- |
| dev-django | django  | 8000      | 8000        |
| dev-frontend  | vuejs   | 80      | 5173        |
| dev-db     | db      |       | 5432        |
| dev-pg-admin     | pg-admin      | 9000      | 80        |

### Running in Production

To run the project in a production environment, you can use the provided `production.yml` Docker Compose file along with the `Makefile`.
Before running in production, make sure to add the necessary environment settings for each service in the .envs/.production directory. Sample environment files for each service are provided in this directory and need to be configured accordingly.

```bash
make run env=production
```

| Container  | Service | Host Port | Docker Port |
| ---------- | ------- | --------- | ----------- |
| django     | django  |           | 8000        |
| db         | db      |           | 5432        |
| nginx      | nginx   | 80        | 80          |

### Useful Makefile Commands

- `make migrate`: Run Django migrations.
- `make makemigrations`: Generate Django migration files.
- `make test`: Run Django tests.
- `make flake`: Run Flake8 for linting.

### Health Check Endpoint

In the Django backend, an API endpoint `/api/healthcheck` has already been implemented. This endpoint is designed to provide a quick health status check of the backend. When accessed, it returns a `200 OK` response, indicating that the backend is up and running properly.

This health check endpoint can be useful for monitoring the status of the backend application, especially in production environments where it's essential to ensure the availability and reliability of the services.

### Endpoints

- `/`: Vue.js with Vite example app.
- `/admin`: Django admin panel. To access, you need to create a superuser using `make createsuperuser`.
- `/api`: Django API. Includes `/api/healthcheck` endpoint.


