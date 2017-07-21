CREATE TABLE SubStart(
  StartDateTime TIMESTAMP NOT NULL,
  SubId VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Start PRIMARY KEY (StartDateTime, SubId)
);

CREATE INDEX idx_datetime
ON SubStart (StartDateTime);

CREATE INDEX idx_id
ON SubStart (SubId);
