# Elastic Cloud -> IAAS


> Elastic - Auto Scaling Up/Down based on the number of requests  
> EC2 - IAAS
	provides EC2, ELB, EBS, ASG
	various flavours are provided -> t2.micro, t2.xlarge 
	Bootstrap script -> runs when first instance was created -> setting required software  

	AMI -> EC2 -> make own AMI. Many AMI's are available in aws.

## EC2 Lifecycle
	AMI ---launch-> pending -> running -> reboot / (stop -> stopped) /( terminate -> shutdown )

	When you stop-hibernate an instance, AWS signals the operating system to perform hibernation (suspend-to-disk), which saves the contents from the instance memory (RAM) to the Amazon EBS root volume. Whereas in stop, ram data will be deleted

## Various Ec2 instances
	General Purpose : web servers or code repositories
	Compute optimized : High performance web servers, High performance computing (HPC) -> C and M class
	Memory Optimized : Web caches, databases, big data -> R and X class
	Storage Optimised : Data ware housing, dbs
	T series -> burstable cpu ( stores cpu credit)

## Security Groups: (Firewall)  
	Control traffic in and out of instance        
	All inbound traffic is blocked by default  
	All outbound traffic is authorised by defa  
	SSH, terminal, use pem file, with 400 permission ( ssh -i .pem ec2@..) or use ec2 connect only.  

## Instance Purchasing Types  
	• On - Demand  : short workload, predictable pricing -> used for short workloads  
	• Reserved ( 1 and 3 years) : Reserved, Convertible, Scheduled -> used for steady usage apps  
	• Spot Instances. : short workloads, cheap, can lose instances (less reliable .. cheapest.. used for non-critical)  
	• Dedicated Hosts. : book an entire physical server, control instance placement (Compliance Req)  
	• Dedicated Instance : no other customers will share your hardware  


## Serverless 
	In EC2, generally we are responsible for upgrading software patches, security, responsible for scalability, availability.  
	Management of underlying service is taken care by aws. (abstracted, we only focus on business logic, this is serverless  

    Lambda -> one of the serverless option  
        Create  a lamba code, We can Trigger it any time ( many triggers available - like http ... )  
        for small processing functions.. (less than 15 mins) 
        billed for resources that we use 

## Cloning
	We can create images from our current server, by this way we can create a new instance based in image, to scale up.  
	AMI great way to take snapshot of the current configuration.

## Roles
	Permissions for instances for accessing others services(S3, EBS..)