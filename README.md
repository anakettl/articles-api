# README

This is a API RESTful about articles

## Prerequisites

Git: https://git-scm.com/

Docker: https://www.docker.com/get-started

Docker Compose: https://docs.docker.com/compose/install/

## Setup

1. Clone this project
```
git clone https://github.com/anakettl/articles-api.git
```

2. Go into the folder
```
cd articles-api
```

3. Build the containers
```
docker-compose build
```

4. Create the database
```
docker-compose run api rails db:create
```

5. Run the migrations
```
docker-compose run web rails db:migrate
```

6. Run the seeds
```
docker-compose run web rails db:seed
```

7. Run the rails server
```
docker-compose up
```

## Access

In your browser access localhost:3000

## Run the tests
```
docker-compose exec api rspec spec
```
