/*
 * SQL to create table Subend and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubEnd(
  EndDateTime TIMESTAMP NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Start PRIMARY KEY (EndDateTime, SubID)
);

CREATE INDEX idx_datetime
ON SubStart (EndDateTime);

CREATE INDEX idx_id
ON SubStart (SubID);
