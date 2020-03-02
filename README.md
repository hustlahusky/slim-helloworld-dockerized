# Slim Framework 4 Skeleton Application

Use this skeleton application to quickly setup and start working on a new Slim Framework 4 application. This application uses the latest Slim 4 with Slim PSR-7 implementation and PHP-DI container implementation. It also uses the Monolog logger.

This skeleton application was built for Composer. This makes setting up a new Slim Framework application quick and easy.

## Run the Application

Copy environment file and configure variables for yourself

```bash
cp .env.example .env
```

Start docker services

```bash
docker-compose up -d
```

When services started attach to `app` service and install `composer` dependencies for your local installation

```bash
docker-compose exec app bash
composer install
```

After that, you can open app in your browser by specified in `.env` DOMAIN.

## Testing

Run this command in the application directory to run the test suite

```bash
composer test
```
