/*
 * SQL to create table SubPostcode and associated indexes.
 * Assumes table does not already exist.
 *
 * MAK 21-07-2017: First version
 */
 
CREATE TABLE SubPostcode(
  Postcode CHAR(8) NOT NULL,
  SubID VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Postcode PRIMARY KEY (Postcode, SubID)
);

CREATE INDEX idx_postcode
ON SubPostcode (Postcode);

CREATE INDEX idx_id
ON SubPostcode (SubID);
