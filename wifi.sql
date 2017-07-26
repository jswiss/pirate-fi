DROP DATABASE piratefi;

CREATE DATABASE piratefi;

\connect piratefi

DROP TABLE connections;

CREATE TABLE connections (
  id serial8 primary key,
  location varchar(200) NOT NULL,
  locationDesc varchar(200),
  connectionName varchar(40) NOT NULL,
  password varchar(100),
  geo point NOT NULL
);

INSERT INTO connections (location, locationDesc, connectionName, password, geo) VALUES ('Prestwick Airport', 'Near the Starbucks', 'squirrels', '123nuts', point(55.5093448,-4.6111202));
