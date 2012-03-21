#!/bin/bash

## Backup the DB for later use

mysqldump bootstrapwp > files/var/tmp/sql/00-bootstrapwp.sql
