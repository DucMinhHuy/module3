
CREATE TABLE customer(
                         cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
                         cName VARCHAR(30),
                         cAge INT NOT NULL
);
CREATE TABLE order1(
                       oID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       cID INT NOT NULL ,
                       oDate DATETIME,
                       oTotalPrice INT,
                       FOREIGN KEY (cID)REFERENCES customer(cID)
);
CREATE TABLE product(
                        pID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                        pName VARCHAR(20),
                        pPrice INT
);
CREATE TABLE order_detail(
                             oID INT NOT NULL ,
                             pID INT NOT NULL ,
                             FOREIGN KEY (oID)REFERENCES order1(oID),
                             FOREIGN KEY (pID)REFERENCES product(pID),
                             odQty VARCHAR(50)
);