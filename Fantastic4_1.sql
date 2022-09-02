
CREATE TABLE Answer_num
(
  Ans_Num  NOT NULL,
  Answer   NULL    ,
  PRIMARY KEY (Ans_Num)
);

CREATE TABLE Name_Numer
(
  ID   int          NOT NULL,
  Name varchar(200) NULL    ,
  PRIMARY KEY (ID)
);

CREATE TABLE Name_Qeustionnare
(
  Name_Num_ID int NOT NULL,
  Ques_Num_ID int NOT NULL,
  PRIMARY KEY (Name_Num_ID)
);

CREATE TABLE Numer_Merged_Data
(
  Name_Num_ID int NOT NULL,
  Ques_Num_ID int NOT NULL,
  Ans_Num         NOT NULL
);

CREATE TABLE Questionnare_Answer
(
  Ques_Num_ID int NOT NULL,
  Ans_Num         NOT NULL,
  PRIMARY KEY (Ques_Num_ID, Ans_Num)
);

CREATE TABLE Questionnare_Num
(
  ID           int          NOT NULL,
  Questionnare varchar(200) NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE Name_Qeustionnare
  ADD CONSTRAINT FK_Name_Numer_TO_Name_Qeustionnare
    FOREIGN KEY (Name_Num_ID)
    REFERENCES Name_Numer (ID);

ALTER TABLE Name_Qeustionnare
  ADD CONSTRAINT FK_Questionnare_Num_TO_Name_Qeustionnare
    FOREIGN KEY (Ques_Num_ID)
    REFERENCES Questionnare_Num (ID);

ALTER TABLE Questionnare_Answer
  ADD CONSTRAINT FK_Questionnare_Num_TO_Questionnare_Answer
    FOREIGN KEY (Ques_Num_ID)
    REFERENCES Questionnare_Num (ID);

ALTER TABLE Questionnare_Answer
  ADD CONSTRAINT FK_Answer_num_TO_Questionnare_Answer
    FOREIGN KEY (Ans_Num)
    REFERENCES Answer_num (Ans_Num);

ALTER TABLE Numer_Merged_Data
  ADD CONSTRAINT FK_Name_Qeustionnare_TO_Numer_Merged_Data
    FOREIGN KEY (Name_Num_ID)
    REFERENCES Name_Qeustionnare (Name_Num_ID);

ALTER TABLE Numer_Merged_Data
  ADD CONSTRAINT FK_Questionnare_Answer_TO_Numer_Merged_Data
    FOREIGN KEY (Ques_Num_ID, Ans_Num)
    REFERENCES Questionnare_Answer (Ques_Num_ID, Ans_Num);
