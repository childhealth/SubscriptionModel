# Subscription Model
Exploration of content based subscription models to support child health pub-sub

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

## Event Representation
Represent an event as a JSON object:
```json
{
  "eventType": "ETYPE04",
  "eventDateTime": "2017-07-16T19:20:30+00:00",
  "nhsNumber": "1234567890",
  "postcode": "LS1 6AE,
  "payload": "stuff"
}
```
This is a model of the actual FHIR events. It represents the key information items in an event that are needed to match to subscriptions.

Each event must have an event type ```eventType```.

Each event must have a date and time on which it occured ```eventDateTime```. This is represented in ISO 8601 format.

Each event must have an NHS number for the person the event applies to ```nhsNumber```.

Each event must have a postcode for the permanent residential address for the person the event applies to ```postcode```.

Each event may have a payload which is a placeholder for the event content ```payload```. This is purely symbolic.

A set of example events are in folder ```/events```.

## Models
Several content based subscription models are considered:
* Naive scan
* Normalisation

