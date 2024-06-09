DROP TABLE IF EXISTS Specializations;
CREATE TABLE Specializations
(
	Id SERIAL PRIMARY KEY,
	SpecializationName VARCHAR(30)
);

DROP TABLE IF EXISTS Subjects;
CREATE TABLE Subjects
(
	Id SERIAL PRIMARY KEY,
	SubjectName VARCHAR(30)
);

DROP TABLE IF EXISTS Specialization_Subject;
CREATE TABLE Specialization_Subject
(
	Id BIGSERIAL PRIMARY KEY,
	Specialisation_Id INTEGER NOT NULL REFERENCES Specializations,
	Subject_Id INTEGER NOT NULL REFERENCES Subjects,
	UNIQUE (Specialisation_Id, Subject_Id)
);

DROP TABLE IF EXISTS Students;
CREATE TABLE Students
(
	Id SERIAL PRIMARY KEY,
	LastName VARCHAR(30),
	FirstName VARCHAR(30),
	FatherName VARCHAR(30),
	GenderIsMale BOOL,
	Age INT,
	SpecializationId INT,
	FOREIGN KEY (SpecializationId) REFERENCES Specializations(Id)
);

DROP TABLE IF EXISTS Student_Subject;
CREATE TABLE Student_Subject
(
	Id BIGSERIAL PRIMARY KEY,
	Student_Id INTEGER NOT NULL REFERENCES Students,
	Subject_Id INTEGER NOT NULL REFERENCES Subjects,
	PointNumber INT,
	UNIQUE (Student_Id, Subject_Id)
);