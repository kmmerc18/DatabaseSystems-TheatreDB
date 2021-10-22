-- Final: Theatre Database
-- CS345 Databases Harcourt 
-- Kim, Tom, and Corinna
-- Purpose: DDL to create our database and its tables.

DROP DATABASE IF EXISTS finalproject_tom_corinna_kim;
CREATE DATABASE finalproject_tom_corinna_kim;
\c finalproject_tom_corinna_kim

-- DROP DATABASE IF EXISTS finalproject_tom_corinna_kim;
-- CREATE DATABASE finalproject_tom_corinna_kim;

-- \c finalproject_tom_corinna_kim

CREATE TABLE ShowNames (
  name varchar(30) NOT NULL, 
  PRIMARY KEY (name));

CREATE TABLE Venue (
  name               varchar(30) NOT NULL, 
  zip_code           char(5) NOT NULL, 
  state              char(2) NOT NULL, 
  fee                float4 NOT NULL, 
  seats              int4 NOT NULL, 
  sq_ft              int4 NOT NULL, 
  removable_seats    int4 NOT NULL, 
  removable_floor    int4 NOT NULL, 
  orchestra_capacity int4 NOT NULL, 
  PRIMARY KEY (name));

CREATE TABLE TimeSlot (
  time time(6) NOT NULL, 
  day  varchar(9) NOT NULL, 
  PRIMARY KEY (time, day));

CREATE TABLE ShowDates (
  "date" date NOT NULL, 
  name   varchar(30) NOT NULL, 
  PRIMARY KEY ("date"),
  FOREIGN KEY (name) REFERENCES ShowNames (name));

CREATE TABLE Book (
  show_name  varchar(30) NOT NULL, 
  book       varchar(30) NOT NULL, 
  instrument varchar(30) NOT NULL, 
  PRIMARY KEY (show_name, book, instrument),
  FOREIGN KEY (show_name) REFERENCES ShowNames (name));

CREATE TABLE People (
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  dept      varchar(30) NOT NULL, 
  title     varchar(30) NOT NULL, 
  phone     char(10) NOT NULL, 
  email     varchar(30) UNIQUE, 
  PRIMARY KEY (name, birthdate));

CREATE TABLE Wages (
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  year      int4 NOT NULL, 
  wage      float4 NOT NULL, 
  PRIMARY KEY (name, birthdate, year),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate));

CREATE TABLE Hours (
  show_date date NOT NULL, 
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  hours     float4 NOT NULL, 
  PRIMARY KEY (show_date, name, birthdate),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate));

CREATE TABLE Transportation (
  type     varchar(30) NOT NULL, 
  "date"   date NOT NULL, 
  seats    int4 NOT NULL, 
  cubic_ft float4 NOT NULL, 
  cost     float4 NOT NULL, 
  PRIMARY KEY (type, "date"));

CREATE TABLE DonorTier (
  type      varchar(30) NOT NULL, 
  threshold float4 NOT NULL, 
  PRIMARY KEY (type));

CREATE TABLE Donors (
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  phone     char(10) NOT NULL, 
  email     varchar(30) NOT NULL, 
  PRIMARY KEY (name, birthdate));

CREATE TABLE Donations (
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  show_date date NOT NULL, 
  amount    float4 NOT NULL, 
  anonymous boolean NOT NULL,
  PRIMARY KEY (name, birthdate, show_date),
  FOREIGN KEY (name, birthdate) REFERENCES Donors (name, birthdate));

CREATE TABLE Ticket (
  type varchar(30) NOT NULL, 
  cost float4 NOT NULL, 
  PRIMARY KEY (type));

CREATE TABLE Company (
  name       varchar(30) NOT NULL, 
  venue_name varchar(30) NOT NULL, 
  type       varchar(30) NOT NULL, 
  cost       float4 NOT NULL, 
  PRIMARY KEY (name, venue_name),
  FOREIGN KEY (venue_name) REFERENCES Venue (name));

CREATE TABLE Characters (
  show_name varchar(30) NOT NULL, 
  character varchar(30) NOT NULL, 
  PRIMARY KEY (show_name, character),
  FOREIGN KEY (show_name) REFERENCES ShowNames (name));

CREATE TABLE Role (
  show_date date NOT NULL, 
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  character varchar(30) NOT NULL, 
  PRIMARY KEY (show_date, name, birthdate, character),
  FOREIGN KEY (show_date) REFERENCES ShowDates ("date"),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate));

CREATE TABLE ShowVenue (
  "date" date NOT NULL, 
  name   varchar(30) NOT NULL, 
  PRIMARY KEY ("date", name),
  FOREIGN KEY ("date") REFERENCES ShowDates ("date"),
  FOREIGN KEY (name) REFERENCES Venue (name));

CREATE TABLE Instruments (
  instrument varchar(30) NOT NULL, 
  PRIMARY KEY (instrument));

CREATE TABLE Plays (
  name       varchar(30) NOT NULL, 
  birthdate  date NOT NULL, 
  instrument varchar(30) NOT NULL, 
  PRIMARY KEY (name, birthdate, instrument),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate),
  FOREIGN KEY (instrument) REFERENCES Instruments (instrument));

CREATE TABLE VenueTime (
  name varchar(30) NOT NULL, 
  time time(6) NOT NULL, 
  day  varchar(10) NOT NULL, 
  PRIMARY KEY (name, time, day),
  FOREIGN KEY (name) REFERENCES Venue (name),
  FOREIGN KEY (time, day) REFERENCES TimeSlot (time, day));

CREATE TABLE Understudy (
  show_date date NOT NULL, 
  name      varchar(30) NOT NULL, 
  birthdate date NOT NULL, 
  character varchar(30) NOT NULL, 
  PRIMARY KEY (show_date, name, birthdate, character),
  FOREIGN KEY (show_date) REFERENCES ShowDates ("date"),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate));

CREATE TABLE BookAssignment (
  name      varchar(30) NOT NULL, 
  show_date date NOT NULL, 
  birthdate date NOT NULL, 
  book      varchar(30) NOT NULL, 
  PRIMARY KEY (name, show_date, birthdate),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate),
  FOREIGN KEY (show_date) REFERENCES ShowDates ("date"));

CREATE TABLE ShowWriters (
  show_name     varchar(30) NOT NULL, 
  music_writer  varchar(30) NOT NULL, 
  script_writer varchar(30) NOT NULL, 
  PRIMARY KEY (show_name),
  FOREIGN KEY (show_name) REFERENCES ShowNames (name));

CREATE TABLE InstrumentAssignment (
  name       varchar(30) NOT NULL, 
  birthdate  date NOT NULL, 
  show_date  date NOT NULL, 
  instrument varchar(30) NOT NULL, 
  PRIMARY KEY (name, birthdate, show_date, instrument),
  FOREIGN KEY (name, birthdate) REFERENCES People (name, birthdate),
  FOREIGN KEY (show_date) REFERENCES ShowDates ("date"));
  
CREATE TABLE FirstShow (
  "date" date,
  PRIMARY KEY ("date"),
  FOREIGN KEY ("date") REFERENCES showdates ("date")
);
