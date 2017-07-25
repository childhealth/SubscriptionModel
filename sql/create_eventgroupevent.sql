/*
 * SQL to create table EventGroupEvent and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 25-07-2017: First version
 */
 
CREATE TABLE EventGroupEvent(
  EventGroupID VARCHAR(20) NOT NULL,
  EventTypeID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Event PRIMARY KEY (EventGroupID, EventTypeID)
);

CREATE INDEX idx_type
ON EventGroup (EventGroupID);
