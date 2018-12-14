CREATE USER myuser;
CREATE DATABASE postgis_test;
create schema adm;

CREATE TABLE adm.user(
  id varchar(255) not null,
  email varchar(255),
  password varchar(255),
  first_name varchar(255),
  last_name varchar(255),
  PRIMARY KEY( id )
);

CREATE TABLE adm.wunder(
  id varchar(255) not null,
  title varchar(255),
  description varchar(255),
  created_by_user varchar(255),
  creation_time date,
  modification_time date,
  PRIMARY KEY( id )
);

GRANT ALL PRIVILEGES ON DATABASE postgis_test TO myuser;

grant select on adm.user to myuser;
grant insert on adm.user to myuser;
grant update on adm.user to myuser;
grant delete on adm.user to myuser;

grant delete on adm.wunder to myuser;
grant select on adm.wunder to myuser;
grant insert on adm.wunder to myuser;
grant update on adm.wunder to myuser;
