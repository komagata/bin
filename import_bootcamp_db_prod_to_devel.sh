#!/bin/sh
pg_dump --clean --no-acl --no-owner -U production -d bootcamp_production -h localhost -p 5433 | psql -d bootcamp_development
