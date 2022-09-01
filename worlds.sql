
CREATE TABLE city
(
  ID          int     NOT NULL COMMENT '아이디',
  CountryCode VARCHAR NULL     COMMENT '지역코드',
  PRIMARY KEY (ID)
) COMMENT '도시명';

CREATE TABLE country
(
  Code VARCHAR NOT NULL,
  ID   int     NOT NULL COMMENT '아이디',
  PRIMARY KEY (Code)
) COMMENT '나라';

ALTER TABLE country
  ADD CONSTRAINT FK_city_TO_country
    FOREIGN KEY (ID)
    REFERENCES city (ID);
