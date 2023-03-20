# semester3-exam
TOOLS USED:

Git and hithub
Terraform
Docker and Dockerhub
AWS account, as well as CLI
Namecheap(for domain)

DEPLOYMENT:

The aim of this project was to create a microservice based architecture;socks shop app, and a personal portfolio site in a kubernetes cluster using infrastructure as code (IAC). The IAC tool of choice was terraform and the scripts utilized can be found with the .tf extension. 
The kubernetes cluster provisioned by AWS elastic kubernetes service (EKS), as well as the services required for its utilization  were created with the files in the cluster-terraform folder.
The files that make up the personal portfolio website are in the personal-site folder.
The backend folder contains the configuration for s3 bucket and a dynamoDB table which will store the state files of the terraform deployent.
Both applications were deployed onto the aws infrastructure using the files in the deployment folder.
