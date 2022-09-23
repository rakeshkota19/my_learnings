# Spring CLoud 

> Course  - https://www.linkedin.com/learning/spring-spring-cloud-2?u=0 by Frank P Moley
> https://www.atlassian.com/microservices/microservices-architecture/microservices-vs-monolith


### Micro Service Architecture 
        1. Micro services generally runs on usually rest or grpc
        2. SOA run over SOAP, and has complex logic. ( Service oriented architecture)
        3. Loosely coupled
        4. Each application/service should have single purpose
    
    Domain and Domain Driven Development
        1. Domain becomes service boundaries
        
    12 factor application development
    Spring boot thrives in clould applications


> Types  
    1. Data services  
    2. Process/business services  
    3. Web application service  


> External Configuration  
    Increases portability and scalability ->  loose coupled between server and config  
    Removes need for env variables 
    
### config server  
        backed by vcs  
        centralised management of all variables

### Spring Cloud Config server
    consumed through rest api
    downloands config at startups


    