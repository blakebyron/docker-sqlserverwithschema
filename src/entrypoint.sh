#!/usr/bin/env bash
set -m
/opt/mssql/bin/sqlservr &  /usr/src/app/setup_database.sh
fg