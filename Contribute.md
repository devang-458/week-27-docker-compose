## Manual installation
 - Install nodejs locally ()
 - Clone the repo
 - Install dependencies ( npm install / yarn install / pnpm install ) 
 - Start the DB locally 
    - `docker run -d -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=testpass123 -e POSTGRES_USER=postgres -p "6500:5432" postgres`
    - Go to neon.tech and get yourself a new DB
 - Change the .env file and update your DB credentails
 - npx prisma migrate
 - npx prisma generate
 - npm run build
 - npm run start

## Docker installation 
 - Install docker
 - Start a new network ` docker network create user_project_net `
 - Start postgres
    - ` docker run -d --network user_project_net -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=testpass123 -e POSTGRES_USER=postgres -p "6500:5432" postgres `
 - Build the image - `docker build --network user_project_net -t user-project`
 - Start the image - `docker run --network user_project_net -p 3000:3000 user-project`

## Docker compose
 - Install docker, docker-compose
 - Run `docker-compose up`