use module3bai2;
CREATE TABLE student(
                        studentID INT PRIMARY KEY ,
                        studentName VARCHAR(50),
                        birth DATE,
                        class VARCHAR(20),
                        ticth VARCHAR(50)
);
CREATE TABLE subjects(
                         subjectID INT PRIMARY KEY ,
                         subjectsName VARCHAR(40)
);
CREATE TABLE transcript(
                           studentID INT ,
                           subjectID INT ,
                           testScore INT,
                           testDay DATETIME,
                           PRIMARY KEY (studentID,subjectID),
                           FOREIGN KEY (subjectID) REFERENCES subjects(subjectID),
                           FOREIGN KEY (studentID) REFERENCES student(studentID)
);
CREATE TABLE teacher(
                        teacherID INT PRIMARY KEY ,
                        teacherName VARCHAR(30),
                        phoneNumber VARCHAR(20) UNIQUE
);
ALTER TABLE subjects ADD teacherID INT(20);
ALTER TABLE subjects ADD CONSTRAINT FK_teacherID FOREIGN KEY (subjectID) REFERENCES teacher(teacherID);
