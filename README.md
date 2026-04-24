# ![NestJS RealWorld Example App](project-logo.png)

> ### NestJS codebase containing real world examples (CRUD, auth, advanced patterns, etc) that adheres to the [RealWorld](https://github.com/gothinkster/realworld-example-apps) API spec.

---

## Fork Modernization (April 2026)

This fork has been modernized to simplify development and ensure environment consistency:
* **Dockerized Setup:** API and PostgreSQL database are now orchestrated via Docker.
* **Database Shift:** Migrated from MySQL to **PostgreSQL** for better modern-stack alignment.
* **New Features:** Added `/api/info` health-check endpoint and full **Swagger** documentation.
* **Code Style:** Project-wide formatting with **Prettier**.

---

# Getting Started

## Quick Start with Docker (Recommended)
1.  Make sure you have **Docker** installed.
2.  Run: `docker compose up --build`
3.  Access:
    * API: `http://localhost:8080/api`
    * Swagger UI: `http://localhost:8080/api/docs`
    * Health Info: `http://localhost:8080/api/info`

---

## Database & Abstractions

This project showcases two different database abstractions: **TypeORM** and **Prisma**.

### 1. TypeORM (Current Branch: `master`)
This branch implements TypeORM with a **PostgreSQL** database (running in Docker).
* **Settings:** Found in `src/app.module.ts`.
* **Visual Access:** Connect any SQL client to `localhost:5432` (User: `user`, Pass: `pass`, DB: `nestjsrealworld`).

### 2. Prisma (Legacy Branch: `prisma`)
To explore the Prisma implementation, switch to the `prisma` branch. Note that the original Prisma setup is configured for **MySQL**.
* **Setup:** Requires running `npx prisma migrate` and `npx prisma generate`.
* **Docs:** Refer to the [Prisma Documentation](https://www.prisma.io/docs/) for more details.

---

## Installation & Manual Scripts

If running without Docker, follow these steps:

1. `npm install`
2. `cp src/config.ts.example src/config.ts` (Set your JWT secret)
3. `npm run start`

**Useful Commands:**
* `npm run build` - Transpile TypeScript to JS.
* `npx prettier --write "src/**/*.ts"` - Clean code formatting.

MIT License 
