# v1.27

- Request ID functionality
  - Request IDs are taken from request and outputted alongside result.
  - Passes read response data back to onMqttMessage() handler using cls-hooked.
  - onMqttMessage() now finds and uses converters upon read responses.
  - In set requests, if no error is thrown a success response is now given
- Cached values have now been removed from published responses.
- Errors are now published to a device's topic, instead of only appearing in logs.