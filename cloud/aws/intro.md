# AWS

### Region
	Aws has regions all over the world. region contain of clusters. Choose region based on location or service required.
	Choosing a region depends on the many factors, Compliance,Proxity, Available Services and Pricing

### Availability Zones ( AZ)
	Each region has 2-6 zones, connected through high speed networks. ( Avoid disasters)
	AZ contains data centres

### POP

	close to users than regions or AZ
	used for caching

	Regional POP vs Edge POP
		Regional POP - far and further away, but more cache storage
		Edge POP     - near to users, but lesser cache 

### Services
	
	Cloud Front - CDN
	Route 53    - DNS 
	Lambda 	    - Lambda func's with lowest possible latency

	

&nbsp;

> Global Services like Iam are same for all regions, whereas other services like EC2 change based on the region.  
> Shared responsible model ( for security, both aws and user are responsible)  
> AWS accessing can be done in three ways, AWS console, CLI and SDK.  


### IAM
	
	Global Service

	Don’t use the root account except for AWS account setup
	Users ->  Admin, seperate users, Least Privilege Principle
    Groups ->  For similar permission access we can add them to same grps
    Policies -> Json document defining permissions( applied to both users/grp)
    Password Policy .. Various settings regaring pswd
    MFA ->  2FA
    Roles -> Assigining permissions to services
    Security Tools .. Credential Report and Access Advisor
	











