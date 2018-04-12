DROP TABLE person;
CREATE TABLE person (
  id NUMERIC PRIMARY KEY,
  name VARCHAR(60),
  team VARCHAR(30),
  position VARCHAR(30)
);

DROP TABLE rooms;
CREATE TABLE rooms (
  id VARCHAR(30) PRIMARY KEY,
  name VARCHAR(40),
  seats NUMERIC NOT NULL,
  cost NUMERIC NOT NULL, --hourly rate
  whiteboard BOOL,
  tv BOOL
);
DROP TABLE meeting;
CREATE TABLE meeting(
  meeting_id NUMERIC PRIMARY KEY,
  room_id VARCHAR(30),
  booker NUMERIC NOT NULL,
  date VARCHAR(15),
  time VARCHAR(15),
  duration NUMERIC
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