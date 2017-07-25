/*
 * SQL to create table SubEvent and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubEvent(
  EventTypeID VARCHAR(20) NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Event PRIMARY KEY (EventTypeID, SubID)
);

CREATE INDEX idx_type
ON SubEvent (EventTypeID);

CREATE INDEX idx_id
ON SubEvent (SubID);
