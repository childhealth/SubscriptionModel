/*
 * SQL to create table Boundary and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 25-07-2017: First version
 */
 
CREATE TABLE Boundary(
  BoundaryID VARCHAR(20) NOT NULL,
  Description VARCHAR(250) NOT NULL,
  CONSTRAINT PK_Boundary PRIMARY KEY (BoundaryID)
);

CREATE INDEX idx_type
ON Boundary (BoundaryID);
