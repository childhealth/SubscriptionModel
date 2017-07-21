/*
 * SQL to create table SubPerson and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubPerson(
  NHSNumber CHAR(10) NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Person PRIMARY KEY (NHSNumber, SubID)
);

CREATE INDEX idx_nhsnumber
ON SubPerson (NHSNumber);

CREATE INDEX idx_id
ON SubPerson (SubID);
