# Code Deploy

	Full end to end custom deployment scripts
	Allows deployment from s3 and git
	Does not manage infrastructure unlike EBS
	

## Application
	
	Deployment
		Application
		Deployment Group - Which instances to be deployed
			ASG
			EC2 instances
			Local Instances
		Deployment Configuration - how to roll out ( one, half or all or immmutable)
		Deployment Sources
			S3 or GIT
			Agent will be running on the instances, which pulls the code

	appspec.yml
		Configuration management tool
		Different sections for file movements, permissions
		
		5 hooks
			Application Stop
			Before Install
			After Install
			Application Start
			Validate Status
		
		 Sections
			File
			Permissions
			Hooks


		Code pulled at /opt/codedeploy-agent/deployment-root/
		We get some environment variables while using appspec file
			$LIFECYCLE_EVENT
			$DEPLOYMENT_ID..

## Setup

	Create 2 Roles
		1. Code deploy permissions to access other aws services
		2. EC2 code delpoy service and ssm service

	1. Setup an EC2 instance, create ami for asg, setup deploy agent
	
	user script:
		cd .
		echo "start" >> /tmp/user_data_debug.txt
		sudo yum update -y
		sudo amazon-linux-extras install java-openjdk11
		sudo amazon-linux-extras install -y maven
		echo "$java -version" >> /tmp/user_data_debug.txt
	
	2. Systems Manager, go to distributor
		install codedeploy package on the instance.

	3. Create security group to allow http and acess database
	4. Create a launch template
			
			Launch temlate - set of all decisions that we make while launching instance
			Set the security group, instace type, iam profile, select the required ami
	5.  Create a ASG
			You can select the load balancer, capacity instrcutions and zones you want to create.
	6. Create a application in Code deploy
			Create APP
			Create Deployment Group, telling where code deploy should send the code
				Select the role		
				Select the ASG
				Select inPlace / Blue-Green
			
			
			
			
		
			


		
		

