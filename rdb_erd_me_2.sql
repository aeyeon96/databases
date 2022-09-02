
CREATE TABLE COMPANY
(
  ID      varchar(200) NOT NULL COMMENT 'unique id',
  Name    varchar(200) NOT NULL COMMENT '이름',
  Age     int          NULL     COMMENT '나이',
  Address varchar(200) NULL     COMMENT '주소',
  Salary  int          NOT NULL COMMENT '봉급',
  PRIMARY KEY (ID)
) COMMENT '회사';

CREATE TABLE Company_Dept
(
  Company_ID varchar(200) NOT NULL COMMENT 'unique id',
  Dept_ID    varchar(200) NOT NULL COMMENT 'unique id'
) COMMENT '관계테이블';

CREATE TABLE DEPARTMENT
(
  ID   varchar(200) NOT NULL COMMENT 'unique id',
  Dept varchar(200) NOT NULL COMMENT '부서',
  PRIMARY KEY (ID)
) COMMENT '부서';

ALTER TABLE Company_Dept
  ADD CONSTRAINT FK_COMPANY_TO_Company_Dept
    FOREIGN KEY (Company_ID)
    REFERENCES COMPANY (ID);

ALTER TABLE Company_Dept
  ADD CONSTRAINT FK_DEPARTMENT_TO_Company_Dept
    FOREIGN KEY (Dept_ID)
    REFERENCES DEPARTMENT (ID);
