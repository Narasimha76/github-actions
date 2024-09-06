Step-1:  
Create an ECS cluster with the cluster, task definition file and service.

Step-2: 
Create an GitHub Repository with the application and the DockerFile with the multistage build

Step-3: 
Create an GitHub Actions script with the stages  
Step 1: Checkout source 
Step 2: Configure AWS credentials 
Step 3: Login to Amazon ECR 
Step 4: Build, tag, and push image to Amazon ECR 
Step 5: Update ECS task definition with the new image 
Step 6: Deploy the updated ECS task definition 
Step 7: Run integration tests 
Step 8: Rollback on failure

Step-4: 
Verify the status 
