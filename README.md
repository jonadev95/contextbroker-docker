##Context Broker dockerfile

Dockerfile for the contextbroker, ready to run, add -p 1026:1026 to map to the correct port. Add --net=host to make shure that the contextbroker could reach the ip's for subsriptions


###What is a ContextBroker?
[http://catalogue.fiware.org/enablers/publishsubscribe-context-broker-orion-context-broker](Orion Context Broker)


```docker run -d jonadev95/contextbroker-docker -p 1026:1026 --net=host ``` 
