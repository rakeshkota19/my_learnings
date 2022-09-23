# AWS

> Before Cloud, companies host On-Premises  
	1. self host  
	2. Collocation ( Take our server to data center)  
	3. Lease servers   

> Virtualization originated in 2006. This allowed a single physical server into multiple dedicated servers.  
> Amazon leveraged this idea( EC2 and S3 started in 2006).

### Region
	Aws has regions all over the world. region contain of clusters. Choose region based on location or service required.
	Choosing a region depends on the many factors, Compliance,Proxity, Available Services and Pricing

### Availability Zones ( AZ)
	Each region has 2-6 zones, connected through high speed/low latency networks. ( Avoid disasters)
	AZ contains one or more data centres.
	Clone your service intlo atleast 2 AZ's


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
	Cloud Watch - Used for monitoring all services, creating alarms
	SNS         - Simple Notification Service
	

&nbsp;

> Global Services like Iam are same for all regions, whereas other services like EC2 change based on the region.  
> Shared responsible model ( for security, both aws and user are responsible)  
> AWS accessing can be done in three ways, AWS console, CLI and SDK.  


### IAM ( Identity and Access Management)
	
	Global Service

	Don’t use the root account except for AWS account setup
	Users ->  Admin, seperate users, Least Privilege Principle
    Groups ->  For similar permission access we can add them to same grps
    Policies -> Json document defining permissions( applied to both users/grp)
    Password Policy .. Various settings regaring pswd
    MFA ->  2FA
    Roles -> Assigining permissions to services
    Security Tools .. Credential Report and Access Advisor
	











