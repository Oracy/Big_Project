# Big Project

#### Technologies used:
- Airflow: https://airflow.apache.org/
- Postgres: https://www.postgresql.org/
- MetaBase: https://www.metabase.com/
- (WIP) S3: https://aws.amazon.com/s3/
#### Architecture

Airflow was choose to orchestrate data pipeline because it can be flexible and can organize steps easily, if you need to escalate you can easy introduce distribute frameworks as spark.
Postgres was choose because it is a very knowledge database, we have a postgres with Airflow execution data and another one separated to be used as data source and target database.
S3 can storage data and load through it to Redshift tables, being a staging area.
And Metabase is an open source project to create visualization with easy way and eficient resources to create dashboards to show final result.

### Execução do Projeto

O projeto está totalmente baseado no Docker e Docker Compose, basta seguir os passos abaixo:

- To manage project with sh file:

```sh
# To turn on
$ chmod +x docker_compose_manager.sh
$ ./docker_compose_manager.sh up

# To turn off
$ ./docker_compose_manager.sh down
```

- To manage project step by step:

```sh
# Start postgres
$ docker-compose -f ./data_source/docker-compose.yaml up -d

# Start Airflow
$ docker-compose -f ./airflow/docker-compose.yaml up -d

# Start Metabase
$ docker-compose -f ./metabase/docker-compose.yaml up -d

#####

# Stop Airflow
$ docker-compose -f ./airflow/docker-compose.yaml down

# Stop Metabase
$ docker-compose -f ./metabase/docker-compose.yaml down

# Stop Postgres
$ docker-compose -f ./data_source/docker-compose.yaml down
```
