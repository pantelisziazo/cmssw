DROP TABLE ECALPEDESTALS_VALUE;
DROP TABLE ECALPEDESTALS;

CREATE TABLE ECALPEDESTALS(
  IOV_VALUE_ID NUMBER(38) NOT NULL,
  TIME NUMBER(38), PRIMARY KEY(IOV_VALUE_ID)
);

CREATE TABLE ECALPEDESTALS_VALUE(
  IOV_VALUE_ID NUMBER(38) NOT NULL,
  DET_ID NUMBER(38) NOT NULL,
  MEAN_X12 FLOAT(126) NOT NULL,
  RMS_X12 FLOAT(126) NOT NULL,
  MEAN_X6 FLOAT(126) NOT NULL,
  RMS_X6 FLOAT(126) NOT NULL,
  MEAN_X1 FLOAT(126) NOT NULL,
  RMS_X1 FLOAT(126) NOT NULL,
  PRIMARY KEY(IOV_VALUE_ID,DET_ID),
  FOREIGN KEY(IOV_VALUE_ID) REFERENCES ECALPEDESTALS(IOV_VALUE_ID)
);

SELECT INDEX_NAME, TABLE_NAME FROM USER_INDEXES;

INSERT INTO ECALPEDESTALS VALUES( 0, 1 );
INSERT INTO ECALPEDESTALS VALUES( 1, 5 );
INSERT INTO ECALPEDESTALS VALUES( 2, 9 );

INSERT INTO ECALPEDESTALS_VALUE VALUES(0, 1656, 1.1, 0.1, 1.2, 0.2, 1.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(0, 456, 2.1, 0.1, 2.2, 0.2, 2.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(0, 789, 3.1, 0.1, 3.2, 0.2, 3.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(0, 987, 4.1, 0.1, 4.2, 0.2, 4.3, 0.3);

INSERT INTO ECALPEDESTALS_VALUE VALUES(1, 1656, 11.1, 0.1, 11.2, 0.2, 11.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(1, 456, 22.1, 0.1, 22.2, 0.2, 22.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(1, 789, 33.1, 0.1, 33.2, 0.2, 33.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(1, 987, 44.1, 0.1, 44.2, 0.2, 44.3, 0.3);

INSERT INTO ECALPEDESTALS_VALUE VALUES(2, 1656, 111.1, 0.1, 111.2, 0.2, 111.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(2, 456, 222.1, 0.1, 222.2, 0.2, 222.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(2, 789, 333.1, 0.1, 333.2, 0.2, 333.3, 0.3);
INSERT INTO ECALPEDESTALS_VALUE VALUES(2, 987, 444.1, 0.1, 444.2, 0.2, 444.3, 0.3);
