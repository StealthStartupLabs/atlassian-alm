#!/bin/bash

echo "******CREATING APPLICATIONS DATABASES ******"

gosu postgres postgres --single <<- EOSQL

CREATE USER jira WITH password 'jira';
CREATE USER bamboo WITH password 'bamboo';
CREATE USER bitbucket WITH password 'bitbucket';

CREATE DATABASE jira WITH OWNER jira ENCODING='UTF8' TEMPLATE=template0;
CREATE DATABASE bamboo WITH OWNER bamboo ENCODING='UTF8' TEMPLATE=template0;
CREATE DATABASE bitbucket WITH OWNER bitbucket ENCODING='UTF8' TEMPLATE=template0;

EOSQL

echo "******APPLICATION DATABASES CREATED******"

