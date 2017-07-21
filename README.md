# subscriptionmodel
Exploration of content based subscription model to support child health pub-sub

Represent a subscription as a JSON object:
```json
{
  "subid": "SUB1",
  "owner": "LA1",
  "description": "Subscription for Universial Health Visiting Service as commissioned by LA1",
  "start-datetime": "2017-07-16T19:20:30+00:00",
  "end-datetime": "2027-07-16T19:20:30+00:00",
  "endpoint":
  {
    "transport": "MESH",
    "address": "XYZ",
    credentials: ""
  }
  "event-group": "UHV",
  "geog-boundary": "LA1",
  "
}
```
