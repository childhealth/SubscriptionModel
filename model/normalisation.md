# Normalisation

## Normalising Subscriptions
A subscription is decomposed into its constituent parts and these are stored in a set of relational tables. This process is called *normalisation*.

The SQL to create these tables, and populate some, are in folder ```/sql```.

### SubStart
This table stores the start date for each subscription.

| StartDateTime | SubID |
|---------------|-------|
|    2017-07-16T19:20:30+00:00 | SUB1 |

[CREATE TABLE](https://github.com/childhealth/SubscriptionModel/blob/master/sql/create_substart.sql)

### SubEnd
This table stores the end date for each subscription.

| EndDateTime | SubID |
|---------------|-------|
|    2027-07-16T19:20:30+00:00 | SUB1 |

[CREATE TABLE](https://github.com/childhealth/SubscriptionModel/blob/master/sql/create_subend.sql)

### SubEvent
This table stores the event types associated with each subscription. This information is derived from the event group reference data held in tables ```EventGroup``` and ```EventGroupEvent``` (see reference data section later).

| EventTypeID | SubID |
|---------------|-------|
| ETYPE04 | SUB1 |
|  ETYPE07 | SUB1 |
| ETYPE17 | SUB1 |

[CREATE TABLE](https://github.com/childhealth/SubscriptionModel/blob/master/sql/create_subevent.sql)

### SubPostcode
This table stores the postcodes associated with each subscription. This information is derived from the boundary reference data held in table ```Boundary``` (see reference data section later).

| Postcode | SubID |
|---------------|-------|
| LS1 6AE | SUB1 |
| LS1 4HT | SUB1 |
| LS11 5BZ | SUB1 |

### SubPerson
This table stores the NHS number for each person associated with each subscription.

| NHSNumber | SubID |
|---------------|-------|
| 1234567890 | SUB1 |
| 0987654321 | SUB1 |

## Reference Data
To support the normalisation of subscriptions, a set of reference data is required.

### EventType
This table stores the master list of event types.

| EventTypeID | Description |
|---------------|-------|
| ETYPE04 | Discharge details for the mother and child. |
|  ETYPE07 | Professional comment, not a plan or action statement. |
| ETYPE17 | Newborn Physical Examination. |

### EventGroup
This table stores the master list of event groups.

| EventGroupID | Description |
|------------|-----------|
| UHV        | ETYPE07   |

### EventGroupEvent
This table stores the event types which are members of each event group. An event type can be a member of more than one group.

| EventGroupID | EventTypeID |
|------------|-----------|
| UHV        | ETYPE07   |

### Boundary
This table stores the master list of boundaries.

| BoundaryID | Description |
|------------|-----------|
| LA1        | Local Authority 1   |

### BoundaryPostcode
This table stores the postcodes associated with boundaries. A postcode can be associated with more than one boundary.

| BoundaryID | Postcode |
|------------|-----------|
| LA1        | LS1 6AE  |
| LA1        | LS1 4HT  |

## Normalisation Process
TODO

## Event Matching Process
TODO

## Event Matching Analysis
TODO

