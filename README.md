## PHP Blogs MVC Using Smarty

Made by: TranHuy2k2
Using Smarty and PHP with MySQL + MVC architecture. This project is a simple blog website with Markdown editor support and JWT authentication.

## Getting Started

### Prerequisites

- PHP 8.1 or newer
- MySQL Database
- Composer

### Using Docker

1. Clone this repository

```bash
git clone https://github.com/TranHuy2k2/smarty-blogs.git
```

2. Move into the project directory

```bash
cd smarty-blogs
```

3. Run the server with docker-compose

```bash
docker-compose up -d
```

4. Open `localhost:3000` in your browser

### Installing

1. Clone this repository

```bash
git clone https://github.com/TranHuy2k2/smarty-blogs.git
```

2. Move into the project directory

```bash
cd smarty-blogs
```

3. Install dependencies with composer

```bash
composer install
```

4. Create a new database and import `database.sql` file
5. Copy `.env.example` to `.env` and edit it to match your database configuration
6. Run `php -S localhost:3000` to start the server
7. Open `localhost:3000` in your browser
