# v1.27

- Request ID functionality
  - Request IDs are taken from request and outputted alongside result.
  - Required large amount of modification to convert read responses within onMqttMessage() handler.
  - In set requests, if no error is thrown a success response is now given
- Cached values have now been removed from published responses.
- Errors are now published to a device's topic, instead of only appearing in logs.