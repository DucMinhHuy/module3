
CREATE TABLE class(
                      classID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                      className VARCHAR(60) NOT NULL ,
                      startDate DATETIME NOT NULL ,
                      status BIT
);
CREATE TABLE student1(
                         studentID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         studentName VARCHAR(30) NOT NULL ,
                         phone VARCHAR(20),
                         address VARCHAR(100),
                         status BIT,
                         classID INT NOT NULL ,
                         FOREIGN KEY (classID) REFERENCES class(classID)
);
CREATE TABLE subject(
                        subID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        subName VARCHAR(30) NOT NULL ,
                        credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >=1),
                        status BIT DEFAULT 1
);
CREATE TABLE mark(
                     markID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                     subID INT NOT NULL ,
                     studentID INT NOT NULL ,
                     UNIQUE (subID,studentID),
                     FOREIGN KEY (subID) REFERENCES subject(subID),
                     FOREIGN KEY (studentID)REFERENCES student1(studentID),
                     mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
                     examTimes TINYINT DEFAULT 1
);