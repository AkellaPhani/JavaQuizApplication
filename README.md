# JavaQuiz
This is an Java application developed to provide following features
1. Registration/Login
2. Sending verfication mail to registered email of the user.
3. Providing 5 random questions to user after loging-in.
4. Validating the answers provided by the user and providing the score.
5. Logout 

Technologis/Framesworks used
1. Java
2. Spring Boot
3. Spring MVC
4. Spring Security
5. Docker
6. H2 database
7. JPA
8. Maven
9. Docker
10. Spring Boot Starter Mail 


# To start the application in local we need to follow the below process
1. Clone the application from this repository
command: git clone <git URL>
2. In application.properties file add values to below two properties, this is to send the verfication mail 
spring.mail.username=
spring.mail.password=
3. To build the application
  mvn clean package
4. To run the application
  mvn spring-boot:run
  
# To start the application using docker after clonning the application from git
1. Do maven build using
mvn clean package
This is to generate the war file
2. To run the commands in dockerfile 
docker build -t java-quiz .
3. To run the application 
docker run -d -p <portNumber> java-quiz


  
  
  
  

