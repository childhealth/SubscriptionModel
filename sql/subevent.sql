/*
 * SQL to create table SubEvent and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubEvent(
  EventType VARCHAR(20) NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_End PRIMARY KEY (EventType, SubID)
);

CREATE INDEX idx_type
ON SubEvent (EventType);

CREATE INDEX idx_id
ON SubEvent (SubID);
