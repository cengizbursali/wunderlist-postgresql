CREATE DATABASE mydatabase;
CREATE USER myuser with password 'mypass';
\c mydatabase;
CREATE SCHEMA myschema;
 
drop table if exists myschema.user cascade;
CREATE TABLE myschema.user(
  id varchar(255) not null,
  email varchar(255),
  password varchar(255),
  first_name varchar(255),
  last_name varchar(255),
  PRIMARY KEY( id )
);
 
drop table if exists myschema.wunder cascade;
CREATE TABLE myschema.wunder(
  id varchar(255) not null,
  title varchar(255),
  description varchar(255),
  created_by_user varchar(255),
  creation_time timestamp,
  modification_time timestamp,
  PRIMARY KEY( id )
);
 
GRANT USAGE ON SCHEMA myschema TO myuser;
GRANT ALL ON ALL TABLES IN SCHEMA myschema TO myuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA myschema TO myuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO myuser;
