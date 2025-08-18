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
 - Creata network ` docker network create user_project_network `
 - Start postgres
    - ` docker run -d --network user_project_network -e POSTGRES_DB=mydb -e POSTGRES_PASSWORD=testpass123 -e POSTGRES_USER=postgres -p "5432:5432" postgres `
 - Build the image - ` docker build --network=host -t user-project . `
 - Start the image - ` docker run -e DATABASE_PASSWORD=postgresql://postgres:testpass123@postgres:5432/mydb?schema=public -p 3000:3000 user-project `

## Docker compose
 - Install docker, docker-compose
 - Run `docker-compose up`