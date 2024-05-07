**PROBLEM STATEMENT:**

![image](https://github.com/Lakan-Ilaw/ERCLI_PG-DO-Configuration-Management-with-Ansible-and-Terraform_CEP1/assets/134827117/ed22f7bb-ef19-4c9c-aaeb-7b8fc73bb8dd)

# **Solution and Documentation:**
[[Lakan-Ilaw]CICD Deployment Using Ansible CM Tool.pdf](https://github.com/Lakan-Ilaw/ERCLI_PG-DO-Configuration-Management-with-Ansible-and-Terraform_CEP1/files/15227917/Lakan-Ilaw.CICD.Deployment.Using.Ansible.CM.Tool.pdf)

# java-tomcat-maven-example

This is an example ready-to-deploy java web application built for Tomcat using Maven and webapp-runner.

## Running Locally

(need maven and java installed)

```
mvn package
java -jar target/dependency/webapp-runner.jar target/*.war
```

The application will be available on `http://localhost:8080`.

## How This Was Built

1. Generate the project using a Maven archetype:

   ```
   mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp
   ```

2. Add the webapp-runner plugin into the `pom.xml`:

   ```
   <build>
     <!-- ... -->
     <plugins>
       <!-- ... -->
       <plugin>
         <groupId>org.apache.maven.plugins</groupId>
         <artifactId>maven-dependency-plugin</artifactId>
         <version>2.3</version>
         <executions>
           <execution>
             <phase>package</phase>
             <goals><goal>copy</goal></goals>
             <configuration>
               <artifactItems>
                 <artifactItem>
                   <groupId>com.github.jsimone</groupId>
                   <artifactId>webapp-runner</artifactId>
                   <version>8.5.11.3</version>
                   <destFileName>webapp-runner.jar</destFileName>
                 </artifactItem>
               </artifactItems>
             </configuration>
           </execution>
         </executions>
       </plugin>
     </plugins>
   </build>
   ```
# java-tomcat-sample
