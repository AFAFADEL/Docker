Lab 8: Run Java Spring Boot App in a Container
Clone the Application Code https://github.com/Ibrahim-Adel15/Docker-1.git
Write Dockerfile.
Use Maven base image with java 17 
Create work directory
Copy the application source code into the container
Build the app using mvn package
Run the app on jar file located in target/demo-0.0.1-SNAPSHOT.jar 
Expose port 8080
Build App1 Image (Note the build time & image size) .
Run Container.
Test the Application.
Stop and delete the container.
--------------------------------
Lab 9: Run Java Spring Boot App in a Container Clone the Application Code https://github.com/Ibrahim-Adel15/Docker-1.git Build the JAR file. Write Dockerfile. Use Java 17 base image Create work directory Copy the JAR file into the container Run the app on jar file located in target/demo-0.0.1-SNAPSHOT.jar Expose port 8080 Build App2 Image (Note the image size). Run Container. Test the Application. Stop and delete the container.
--------------------------------------
Lab 10: Multi-Stage Build for a Node.js App Clone the Application Code https://github.com/Ibrahim-Adel15/Docker-1.git Write Dockerfile with Multi-stage. Use Maven base image for first stag Copy the application code into the container Build the app using mvn package Use java base image for second stag Copy JAR file from first stag Expose port 8080 Run the app Build App3 Image (Note the image size). Run the container. Test the Application. Stop and delete the container.
