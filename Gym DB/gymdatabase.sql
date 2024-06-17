

create database Gym_database;
Use  Gym_database;

CREATE TABLE Locker(
  lockerID INT PRIMARY KEY
);
CREATE TABLE COACH (
  COACH_idNumber INT PRIMARY KEY,
  FirstName VARCHAR(255) NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  PhoneNo VARCHAR(20) NOT NULL
);
CREATE TABLE MEMBER (
  membership_id INT PRIMARY KEY,
  COACH_idNumber  INT NOT NULL,
  lockerID INT NOT NULL,
  LastName VARCHAR(255) NOT NULL,
  FirstName VARCHAR(255) NOT NULL,
  PhoneNo VARCHAR(20) NOT NULL,
  age INT,
  FOREIGN KEY (COACH_idNumber) REFERENCES COACH(COACH_idNumber),
  FOREIGN KEY (lockerID) REFERENCES Locker(lockerID)
);
CREATE TABLE PACKAGE (
  PackageID INT PRIMARY KEY,
  PackageName VARCHAR(255) NOT NULL,
  Period INT,
  Cost DECIMAL(10,2)
);
CREATE TABLE WORKOUT_PLAN(
  PlanID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  membership_id INT NOT NULL,
  StartDate DATE,
  EndDate DATE,
  Price INT NOT NULL,
  FOREIGN KEY (membership_id) REFERENCES MEMBER(membership_id)
);
CREATE TABLE CLASS (
  ClassID INT PRIMARY KEY,
  COACH_idNumber INT NOT NULL,
  ClassDate DATE,
  Time TIME,
  FOREIGN KEY (COACH_idNumber) REFERENCES COACH(COACH_idNumber)
);





