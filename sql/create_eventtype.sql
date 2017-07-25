/*
 * SQL to create table EventType and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE EventType(
  EventTypeID VARCHAR(20) NOT NULL,
  Description VARCHAR(250) NOT NULL,
  CONSTRAINT PK_Event PRIMARY KEY (EventTypeID)
);

CREATE INDEX idx_type
ON EventType (EventTypeID);
