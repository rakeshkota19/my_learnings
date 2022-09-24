# Virtual Private Cloud

	Virtual Networks  
	https://docs.aws.amazon.com/vpc/latest/userguide/vpc-scenarios-intro.html


### Subnets
	
	Public Subnets - host services which have access to public
	Private Subnets - host services, which are not exposed ( DB)

	NAT - Network Address Translation - Multiple Private IP's to single Public IP

### Gateway  
		Nat gateway  
		Internet Gateway  

### Elastic IP
	Public IP, dynamic, so once EC2 goes down, it will get a new ip on reboot.  
	Elastic IP, Bound to our AWS account	
	As the IP's are limited, they will be charged, if we dont use them.  

### VPN

	AWS CLIENT VPN
		Secure connection from client to the vpc. Normally we cannot connect to private vpc's from outside. To connect we can use Client VPN.
	
	Aws Site to Site VPN
		Secure connection from your servers to AWS servers. (Company can have some own and some AWS servers).


		

