# LAMP Docker Setup

A lightweight and customizable Docker-based LAMP (Linux, Apache, MySQL, PHP) stack for web development and testing.

## Overview

This project provides a Dockerized LAMP environment, enabling developers to quickly set up a local web server with Apache, MySQL, and PHP. It is designed for simplicity, flexibility, and ease of use, making it ideal for developing and testing PHP-based applications.

## Features

- **Apache**: Configured as the web server with support for `.htaccess` and mod_rewrite.
- **MySQL**: A stable and secure database server with customizable configurations.
- **PHP**: Includes the latest stable PHP version with common extensions.
- **Docker Compose**: Simplifies setup and management of multi-container services.
- **Customizable**: Easily modify configurations for Apache, MySQL, and PHP.
- **Volume Mapping**: Persist data and application code across container restarts.
- **Lightweight**: Optimized for minimal resource usage.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.
- Basic knowledge of Docker and web development.

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/3sus/lamp-docker.git
cd lamp-docker
```

### 2. Configure Environment

Copy the example environment file and adjust settings as needed:

```bash
cp .env.example .env
```

Edit `.env` to customize MySQL credentials, ports, or other settings:

```env
# Example .env file
MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=myapp
MYSQL_USER=user
MYSQL_PASSWORD=password
APACHE_PORT=80
```

### 3. Build and Run

Start the LAMP stack using Docker Compose:

```bash
docker-compose up -d
```

- The `-d` flag runs containers in detached mode.
- Apache will be accessible at `http://localhost:<APACHE_PORT>` (default: `http://localhost:80`).
- MySQL will be accessible on the specified port (default: `3306`).

### 4. Place Your Application

Add your PHP application files to the `www/` directory. These files are automatically mapped to the Apache web root.

### 5. Access MySQL

Connect to the MySQL database using a client (e.g., phpMyAdmin, MySQL Workbench) with the credentials defined in `.env`.

Example connection details:
- **Host**: `localhost` or `127.0.0.1`
- **Port**: `3306` (or as defined in `.env`)
- **User**: `user` (or as defined in `.env`)
- **Password**: `password` (or as defined in `.env`)

### 6. Stop the Stack

To stop the running containers:

```bash
docker-compose down
```

## Directory Structure

```
lamp-docker/
├── docker-compose.yml    # Defines Docker services
├── www/                 # Web root for your PHP application
├── mysql/               # MySQL data persistence
├── apache/              # Apache configuration files
└── .env.example         # Example environment configuration
```

## Customization

- **Apache**: Modify configuration files in `apache/` to adjust settings like virtual hosts or `.htaccess` rules.
- **PHP**: Add PHP extensions or modify `php.ini` in the `Dockerfile` or via volume mounts.
- **MySQL**: Adjust MySQL settings in `docker-compose.yml` or `.env` for database configuration.

## Troubleshooting

- **Port Conflicts**: Ensure the specified ports (e.g., `80`, `3306`) are not in use by other services.
- **Permissions Issues**: Verify that the `www/` directory has appropriate read/write permissions.
- **Logs**: Check container logs for debugging:

```bash
docker-compose logs
```

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add your feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built with [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/).
- Inspired by the need for a simple, reproducible LAMP stack for development.