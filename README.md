Task Management System

A Task Management System is a web application developed using Java, SpringMVC, MySQL, jsp, HTML, CSS, Bootstrap, and Thymeleaf. It provides users with the ability to manage tasks categorized into work, personal, and shopping lists.

Features

CRUD Operations: Users can create, read, update, and delete tasks effortlessly.
Filtering by Name: Easily search and filter tasks by their name.
Filtering by Category: Tasks are categorized into work, personal, and shopping, enabling users to filter tasks by their respective categories.
Filtering by Status: Users can filter tasks based on their completion status.
Technologies Used
Java: The core programming language used for backend development.
SpringMVC: Provides a robust framework for building web applications in Java.
MySQL: A relational database management system used for storing task data.
JSP (JavaServer Pages): Used for dynamic content generation on the server side.
HTML: Markup language for structuring web pages.
CSS: Stylesheet language used for styling the application's user interface.
Bootstrap: Front-end framework for designing responsive and mobile-first websites.
Thymeleaf: Server-side Java template engine for web applications.
Usage
To run the application locally, make sure you have Java and MySQL installed on your system. Clone the repository and configure the database settings in the application properties file. Then, build and deploy the application using Maven or your preferred build tool.

bash
Copy code
git clone https://github.com/your_username/task-management-system.git
cd task-management-system
# Configure database settings in application.properties
mvn spring-boot:run
Access the application in your browser at http://localhost:8080.
