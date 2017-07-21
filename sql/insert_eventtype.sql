/*
 * SQL to insert test data in EventType table.
 * Assumes table does already exist.
 * 
 * Data only for the first 20 event types is given.
 * The event types and their definitions are not yet finalised, therefore this data should be treated as experimental
 *
 * MAK 21-07-2017: First version
 */
 
INSERT INTO EventType
VALUES ('ETYPE01', 'APGAR - The APGAR score of the baby.');

INSERT INTO EventType
VALUES ('ETYPE02', 'Birth Details - Details of the birth of the child.');

INSERT INTO EventType
VALUES ('ETYPE03', 'Neonatal Care - Details of any neonatal admission for the child.');

INSERT INTO EventType
VALUES ('ETYPE04', 'Discharge - Discharge details for the mother and child.');

INSERT INTO EventType
VALUES ('ETYPE05', 'Breastfeeding Status - A record of the type of milk the child is being feed at all contacts in the first 12-13 months.');

INSERT INTO EventType
VALUES ('ETYPE06', 'Professional Advice - Professional Advice comment, this could include a medical plan.');

INSERT INTO EventType
VALUES ('ETYPE07', 'Professional Comment - Professional comment, not a plan or action statement.');

INSERT INTO EventType
VALUES ('ETYPE08', 'Personal or Parental Comment - A comment entered into an ePCHR by a parent/carer or child.');

INSERT INTO EventType
VALUES ('ETYPE09', 'Communication - Interpreter required, languages spoken.');

INSERT INTO EventType
VALUES ('ETYPE10', 'Core - All demographic data on the spine eg Address, Address history, phone number, ethnicity.');

INSERT INTO EventType
VALUES ('ETYPE11', 'Related Persons - Event capturing the related persons including the relationship and the household make up.');

INSERT INTO EventType
VALUES ('ETYPE12', 'School Entry Review - This event is to record the data specific to the School Entry Check such as hearing and vision screening.');

INSERT INTO EventType
VALUES ('ETYPE13', 'Early Years Progress Check - To record the specific narrative related to the Education review of the 2-2 1/2 year review. This may or may not be done at the same time as the Development review.');

INSERT INTO EventType
VALUES ('ETYPE14', 'New Baby Review - To record the specifics around the New Baby Review which are not recorded within any other event.');

INSERT INTO EventType
VALUES ('ETYPE15', 'Problems and Issues - To record the narrative at any point of contact for a Health Review.  Mandated at New Baby, 6-8 weeks, 12 months and 2 2 1/2 Years but can happen at any point.');

INSERT INTO EventType
VALUES ('ETYPE16', 'Assesment Results - To record the (current) Ages and Stages scores at 12 months and 2 - 2 1/2 Year Review.');

INSERT INTO EventType
VALUES ('ETYPE17', 'Newborn Physical Examination - The event to track status of event and associated admin items.');

INSERT INTO EventType
VALUES ('ETYPE18', 'Newborn Hearing Screening - The event to track status of event and associated admin items.');

INSERT INTO EventType
VALUES ('ETYPE19', 'Newborn Blood Spot Screening - The event to track status of event and associated admin items.');

INSERT INTO EventType
VALUES ('ETYPE20', '6-8 Week Review - The event to track status of event and associated admin items.');
