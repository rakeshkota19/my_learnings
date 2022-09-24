# Elastic Load Balancer

	Load balancer -> Splits up the load into multiple servers.
		Depends on Stateful or Statless Service
		Stateful - consistent hashing, map
		Statless - round robin, cpu usage value

		Both software and hardware Load Balancers are available
	
	
	Types
		Network Load balancer    
			Routes based on Layer 4  
			More faster  

		Application Load balancer  
			Routes based on Layer 7  
			Http Routing Rules  
			More common 

	They also have security group similar to ec2
	