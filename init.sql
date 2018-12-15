CREATE DATABASE mydatabase;
CREATE USER myuser with password 'mypass';
GRANT CONNECT ON DATABASE mydatabase TO myuser;
GRANT CREATE ON DATABASE mydatabase TO myuser;


GRANT USAGE ON SCHEMA myschema TO myuser;
GRANT ALL ON ALL TABLES IN SCHEMA myschema TO myuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA myschema TO myuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO myuser;

GRANT CREATE ON DATABASE mydatabase TO myuser;

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
