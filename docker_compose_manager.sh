#!/bin/bash

action=$1

if [ $action == "up" ];
then
    echo "Turning data_source on" && docker-compose -f ./data_source/docker-compose.yaml up -d;
    echo "Turning airflow on" && docker-compose -f ./airflow/docker-compose.yaml up -d;
elif [ $action == "down" ];
then
    echo "Turning airflow off" && docker-compose -f ./airflow/docker-compose.yaml down;
    echo "Turning data_source off" && docker-compose -f ./data_source/docker-compose.yaml down;
fi