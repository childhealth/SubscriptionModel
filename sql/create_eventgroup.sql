/*
 * SQL to create table EventGroup and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE EventGroup(
  EventGroupID VARCHAR(20) NOT NULL,
  Description VARCHAR(250) NOT NULL,
  CONSTRAINT PK_Group PRIMARY KEY (EventGroupID)
);

CREATE INDEX idx_type
ON EventGroup (EventGroupID);
