/*
 * SQL to create table SubStart and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubStart(
  StartDateTime TIMESTAMP NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Start PRIMARY KEY (StartDateTime, SubID)
);

CREATE INDEX idx_datetime
ON SubStart (StartDateTime);

CREATE INDEX idx_id
ON SubStart (SubID);
