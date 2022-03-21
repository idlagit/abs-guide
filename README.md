# abs-guide Application
Repo for Movella Assessment

# How To Use This Repo
We will walkthrough deploying the abs-guide application using two approaches;
  1. Helm approach (preferred)
  2. Kubernetes approach

## Requirements/Technologies Used
1. Docker-Desktop to run local kubernetes cluster
2. Helm
3. Git
4. Dockerhub account
5. Vs-Code

## Helm Approach - Steps to Reproduce
1. Clone this repo to your local
2. Spin up your kubernetes cluster
3. Run the ```install-absguide.sh``` bash script to deploy the application using the helm package manager
4. Access the application at [localhost:30008](http://localhost:30008) 

## Kubernetes Approach - Steps to Reproduce
1. Clone this repo to your local
2. Spin up your kubernetes cluster
3. Create the deployment ```kubectl create -f deployment.yaml```
4. Create the service ```kubectl create -f service.yaml```
5. Access the application at [localhost:30005](http://localhost:30005)


# Process Summary
1. Wrote a Dockerfile to build an image of the application
2. Pushed the built image into dockerhub image registry
3. Created kubernetes manifest files named ```service.yaml``` and ```deployment.yaml```
4. Created the Kubernetes resources using the commands respectively
    - ```kubectl create -f deployment.yaml```    
    - ```kubectl create -f service.yaml```
5. In the deployment.yaml, I have specified 2 replica's of pods be created for high availability
6. In the Service.yaml, I have exposed the application externally using type NodePort which will expose the application on port 30008
7. Created a helm chart for the application using command ```helm create absguide```
8. Modified the ```values.yaml``` and other files as neccessary to achieve the same state as in step 3 above
9. Created a bash script named ```install-absguide.sh``` to install a release of the application named ```absguide-app```
10. Provided execute permission to the file using ```chmod +x install-absguide.sh```
11. Run the file using the command ```./install-absguide.sh```
12. Confirmed pods are deployed using ```kubectl get pods``` api call
  <img width="634" alt="image" src="https://user-images.githubusercontent.com/88596820/159349921-be6e623d-434a-4fb8-8c5c-88cffcebe41e.png">
  
13. Confirmed my pods are deployed using api call ```kubectl get svc```
  <img width="677" alt="image" src="https://user-images.githubusercontent.com/88596820/159350456-b02f77a3-2a3e-4bad-bd9b-597d69b401e8.png">

14. Confirmed the application is properly deployed by navigating to ```localhost:30008
  <img width="1781" alt="image" src="https://user-images.githubusercontent.com/88596820/159353541-eee14a7c-a1c5-4d7d-b1cd-dde3bcf545e4.png">

15. Created a repo for this project in github namely [abs-guide](https://github.com/idlagit/abs-guide/edit/master/README.md)
16. Commited all the files into the movella repo
17. Wrote documentation






