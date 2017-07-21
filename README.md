# Subscription Model
Exploration of content based subscription model to support child health pub-sub

## Representing Subscriptions
Represent a subscription as a JSON object:
```json
{
  "subid": "SUB1",
  "owner": "LA1",
  "description": "Subscription for Universial Health Visiting Service as commissioned by LA1",
  "startDateTime": "2017-07-16T19:20:30+00:00",
  "endDateTime": "2027-07-16T19:20:30+00:00",
  "endpoint": {
    "transport": "MESH",
    "address": "XYZ",
    "credentials": ""
  },
  "eventGroup": "UHV",
  "geogBoundary": "LA1",
  "people": [
    {"nhsNumber": "1234567890"},
    {"nhsNumber": "0987654321"}
   ]
}
```
Each subscription must have a unique identity ```subid```.

Each subscription must have an owner ```owner```.

Each subscription must have a description ```description```.

Each subscription must have a start date and time ```startDateTime```. This is represented in ISO 8601 format, complete date plus hours, minutes and seconds: YYYY-MM-DDThh:mm:ssTZD (eg 1997-07-16T19:20:30+01:00), where:

     YYYY = four-digit year
     MM   = two-digit month (01=January, etc.)
     DD   = two-digit day of month (01 through 31)
     hh   = two digits of hour (00 through 23) (am/pm NOT allowed)
     mm   = two digits of minute (00 through 59)
     ss   = two digits of second (00 through 59)
     TZD  = time zone designator (Z or +hh:mm or -hh:mm)
     
Each subscription must have an end date and time ```endDateTime```. This is represented in ISO 8601 format.

Each subscription must have an endpoint that represents the system which any events matching the subscription should be sent to. The ```endpoint``` object identifies the network transport to use ```transport```, the associated destination address ```address``` and any security credentials that may be needed to connect to the endpoint ```credentials```.

Each subscription can have an event group ```eventGroup```.

Each subscription can have a geographical boundary ```geogBoundary```.

Each subscription can have zero or more people ```people```. Each person is identified by their NHS number ```nhsNumber```.

A set of example subscriptions are in folder ```/subscriptions```.

## Normalising Subscriptions
A subscription is decomposed into its constituent parts and these are stored in a set of relational tables. This process is called *normalisation*.

The SQL to create these tables are in folder ```/sql```.

### SubStart
This table stores the start date for each subscription.

| StartDateTime | SubID |
|---------------|-------|
|    2017-07-16T19:20:30+00:00 | SUB1 |

### SubEnd
This table stores the end date for each subscription.

| EndDateTime | SubID |
|---------------|-------|
|    2027-07-16T19:20:30+00:00 | SUB1 |

### SubEvent
This table stores the event types associated with each subscription. This information is derived from the event group reference data held in table ```EventGroup``` (see reference data section later).

| EventType | SubID |
|---------------|-------|
| ETYPE04 | SUB1 |
|  ETYPE07 | SUB1 |
| ETYPE17 | SUB1 |

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

| EventType | Description |
|---------------|-------|
| ETYPE04 | Discharge details for the mother and child. |
|  ETYPE07 | Professional comment, not a plan or action statement. |
| ETYPE17 | Newborn Physical Examination. |

### EventGroup
TODO

### Boundary
TODO

## Normalisation Process
TODO

## Event Representation
TODO

## Event Matching Process
TODO

## Event Matching Analysis
TODO
