DROP TABLE person;
CREATE TABLE person (
  id NUMERIC PRIMARY KEY,
  name VARCHAR(60),
  team VARCHAR(30),
  position VARCHAR(30)
);

DROP TABLE room;
CREATE TABLE room (
  id NUMERIC PRIMARY KEY,
  name VARCHAR(40),
  seats NUMERIC NOT NULL,
  cost NUMERIC NOT NULL, --hourly rate
  whiteboard BOOL,
  tv BOOL
);
DROP TABLE meeting;
CREATE TABLE meeting(
  id NUMERIC PRIMARY KEY,
  room NUMERIC,
  booker NUMERIC NOT NULL,
  date DATE,
  time NUMERIC,
  duration NUMERIC,
  UNIQUE(room, time)
);
DROP TABLE costs;
CREATE TABLE costs(
  team VARCHAR(30),
  sum NUMERIC NOT NULL,
  date DATE

);

DROP TABLE attendant;
CREATE TABLE attendant(
  person NUMERIC NOT NULL,
  meeting NUMERIC NOT NULL

);


DROP TABLE team;
CREATE TABLE team(
name VARCHAR(40) PRIMARY KEY
);