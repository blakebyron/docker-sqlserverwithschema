# Sql Server Image with custom Database Schema using Docker 
A super simple approach to create an instance of sql server along with a database and schema. Useful for a development environment or for running functional tests which require a database.

## Usage
Clone the repo and run the following command in the src folder to build the conatiner

`
docker build -t sqlserverwithschema .
`

To run the container use the following command

`
docker run -e ACCEPT_EULA=Y -e SA_PASSWORD=SuperStr0ngPa55word -p 1433:1433 -d sqlserverwithschema
`

This is only a proof of concept but i'd still suggest changing the password. If you do make sure you update the setup_database.sh file as well.

You may also need to change the port the container is exposed on from 1433 to something that doesn't clash.

## Roadmap
Some potential future enhancements
- Add a docker compose file to simplify creating a container
- Add a volume and source the setup.sql to allow customised sql scripts
- Check the database server is actually running before running any sql scripts
- Add a short description of each file and its part of the process