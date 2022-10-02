
# Elastic Bean Stack -> PAAS


	Platform as a service
	Allows quick deployment of our applications
	Reduces Mangement Complexity
	Choose Instance Type and DB
	
	Bean Stack provides whole platform, you just need to upload/deploy your code

	EBS 
		Load Balancer
		ASG.. with a group of servers 
		Security groups

	All together instead of managing them alone.

	Deployment:
		Single Update
		Rolling Deployment - Multiple/One at a time - Zero downtime
		Immutable deployment - New instances of servers are created, when all are up, load balancer points to them, and deletes old instances.

	EBS uses clould formation to build the whole setup
		1. First stores the code into s3
		2. Creates a load balancer
		3. Creates a Auto scaling group
		4. creates EC2 instance

## EB CLI
	 download eb-cli

	eb init
	eb create prac_aws_deployment -i t2.micro

	.ebextensions
		packages -> used to install/update packages
		option_settings -> allows to set env variables
		commands -> commands are run before the zip file is unzipped
		container_commands -> commands are run after the code starts running
		sources
		groups
		files
		services

	eb deploy -> to push any change from local to env
	eb config env_name
	eb terminate env_name -> tears down all the resources(based on cloud formation)

	logs on ec2 machine for info
	/var/log -> eb-engine.log (log for startup process) and cfn-init.log( log for .ebextensions command)

## RDS for EBS
	Edit configuration and add DB (only RDS option available), change engine, and properties.


## Elastic Container Service
	used for managing containers  
	Elatic Container Registory can be used for storing images  
	Containers can run on EC2 instance ( contious workloads) or Fargagte (workloads executes once)  

## Lambda - Serverless
	Give the code to AWS and AWS runs it for you
	billed only for the exact time your function ran

## AWS Batch
	manage and schedule jobs on the spot instances.

	
	