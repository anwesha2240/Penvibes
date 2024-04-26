
# A Social Media Web Application for writers using Java Server Pages (JSP), SQL (Oracle Database), HTML, CSS, Javascript and Apache Tomcat as a tool.

## Overview
This guide will walk you through the setup process for deploying a web application using Apache Tomcat, JSP, HTML, CSS, JavaScript, and an Oracle database.

## Prerequisites
- Apache Tomcat installed and configured
- Oracle Database installed and accessible
- Basic understanding of JSP, HTML, CSS, and JavaScript

## Setup Instructions

1. **Clone Repository**: Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-repo-url.git
    ```

2. **Configure Database Connection**: Edit the `database.properties` file located in the `src/main/resources` directory and update the database connection details:

    ```properties
    db.driver=oracle.jdbc.driver.OracleDriver
    db.url=jdbc:oracle:thin:@localhost:1521:XE
    db.username=your-username
    db.password=your-password
    ```


3. **Deploy the generated WAR file to Apache Tomcat:**
        - Copy the WAR file (`your-application.war`) from the `target` directory to the `webapps` directory of your Tomcat installation.
        - Start or restart Apache Tomcat.

4. **Access the Application**: Once Tomcat is running, access the application using a web browser:

    ```
    http://localhost:8080/your-application
    ```

## Additional Notes
- Make sure Oracle JDBC driver JAR file is included in the `lib` directory of your Tomcat installation.
- Customize and extend the application according to your requirements.


