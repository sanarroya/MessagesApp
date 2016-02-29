# MessagesApp
This apps consumes an Array of messages from an API and present them to the user, allowing the user to dismiss individual message or dismiss all messages.

The messages unread are mark with a blue dot.


Here are the libraries used in this project

### AFNetworking ###

This library handles all the networking of the application, I use it because it transform the NSData response to JSON and all the request are Asynchronous.

[AFNetworking documentation](https://github.com/AFNetworking/AFNetworking)

### Mantle ###

This library maps the JSON response into the model objects it simplifies writing data models for interacting with APIs that use JSON as their data exchange format.

[Mantle documentation](https://github.com/Mantle/Mantle)
