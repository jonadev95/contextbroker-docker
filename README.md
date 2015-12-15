#Context Broker dockerfile

###TL;DR
```docker run -d -p 1026:1026 jonadev95/contextbroker-docker```

###What is this repo about?
Dockerfile for the contextbroker, ready to run, mongodb included.

If you want to make subscriptions and wan't to use the localhost address, please replace ```-p 1026:1026``` with ```--net=host```, so the container is able to resolve the hostname.

###What is a ContextBroker?
[Orion Context Broker](http://catalogue.fiware.org/enablers/publishsubscribe-context-broker-orion-context-broker)
