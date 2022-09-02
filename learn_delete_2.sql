
CREATE TABLE COMPANY
(
  ID      varchar(200) NOT NULL COMMENT 'unique id',
  Name    varchar(200) NOT NULL COMMENT '이름',
  Age     int          NULL     COMMENT '나이',
  Address varchar(200) NULL     COMMENT '주소',
  Salary  int          NOT NULL COMMENT '봉급',
  PRIMARY KEY (ID)
) COMMENT '회사';

CREATE TABLE DEPARTMENT
(
  ID          varchar(200) NOT NULL COMMENT 'unique id',
  Dept        varchar(200) NOT NULL COMMENT '부서',
  Employee_id varchar(200) NOT NULL COMMENT 'unique id',
  PRIMARY KEY (ID)
) COMMENT '부서';

ALTER TABLE DEPARTMENT
  ADD CONSTRAINT FK_COMPANY_TO_DEPARTMENT
    FOREIGN KEY (Employee_id)
    REFERENCES COMPANY (ID);
