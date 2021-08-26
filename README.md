1) Build as a Spring Starter Project  
   spring boot version 2.5.4  
   java version 11
   
dependencies:
- h2 Database
- spring data jpa
- spring web
- h2[runtime]
- tomcat-embed-jasper
- jstl 

(this should all already be in the pom.xml)

2) run as a spring boot app
 3) front-end home page is on "localhost:8080" - should be intuitive from there
 
   to view the in memory database - "localhost:8080/h2-console", change JDBC URL: -> "jdbc:h2:mem:nick", then connect
