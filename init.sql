CREATE USER myuser;
CREATE DATABASE postgis_test;
GRANT ALL PRIVILEGES ON DATABASE postgis_test TO myuser;

CREATE SCHEMA myschema;

CREATE TABLE myschema.user(
  id varchar(255) not null,
  email varchar(255),
  password varchar(255),
  first_name varchar(255),
  last_name varchar(255),
  PRIMARY KEY( id )
);

CREATE TABLE myschema.wunder(
  id varchar(255) not null,
  title varchar(255),
  description varchar(255),
  created_by_user varchar(255),
  creation_time date,
  modification_time date,
  PRIMARY KEY( id )
);

grant select on myschema.user to myuser;
grant insert on myschema.user to myuser;
grant update on myschema.user to myuser;
grant delete on myschema.user to myuser;

grant delete on myschema.wunder to myuser;
grant select on myschema.wunder to myuser;
grant insert on myschema.wunder to myuser;
grant update on myschema.wunder to myuser;
