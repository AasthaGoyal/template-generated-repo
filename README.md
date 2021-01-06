# WSO2 API-Manager 3.0 Deployment 

This project creates a customer-specific API Manager image based on the open-sourced version of WSO2 API Manager available on Dockerhub (wso2/wso2am:3.1.0-alpine3.11). The customer-specific customisations, extensions, brandings and configurations should be added through this project. 

## Local development process 

<br/><br/> 
1. Check out this project into your local development environment. 
<br/><br/> 
2. Apply your changes, extensions as file-level additions/modifications. 
<br/><br/>  
3. Build the custom Docker image locally for testing. 
<br/><br/>  
```
docker build -t wso2-am-local .

```
<br/><br/>  
4. Run the locally-built image using Docker and test your changes and regression issues. 
<br/><br/>  
```
docker run -it --rm -p 8280:8280 -p 8243:8243 -p 9443:9443 wso2-am-local:latest

```
<br/><br/>  
The API-M portal can be accessed using the following URLs and you can use default admin/admin credentials. 
<br/><br/> 
```
https://localhost:9443/publisher

https://localhost:9443/devportal/

```
<br/><br/>  
5. If everything is OK, send a Merge Request.  The GitLab Build Pipeline will take your changes and apply to test and prod environments.  
   