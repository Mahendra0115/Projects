JSP Authentication System
A simple User Authentication System using JSP, Servlets, and MySQL. This project allows users to register, login, and logout securely.

🚀 Features
✅ User Registration & Login
✅ Password Hashing (if implemented)
✅ Session Management
✅ MySQL Database Integration
✅ JSP & Servlet-Based Backend

🛠️ Requirements
🔹 Java 8+
🔹 Apache Tomcat 9.0
🔹 MySQL Database
🔹 JDBC Connector (mysql-connector.jar)
🔹 IDE (Eclipse/VS Code/IntelliJ)

📚 Installation & Setup
1️⃣ Clone Repository
git clone https://github.com/your-username/your-repo.git
cd your-repo
2️⃣ Database Setup
Create a MySQL database auth_db
Import the database.sql file
Update DB credentials in DatabaseConnection.java
3️⃣ Run on Tomcat Server
Open the project in VS Code / Eclipse
Add Apache Tomcat Server
Right-click the project → Run on Server
Open in browser: http://localhost:3306/your_project_name/
📌 Folder Structure
/src  
   ├── com.dao (Database Logic)  
   ├── com.servlet (Servlets)  
   ├── com.entites (User Model)  
/webapp  
   ├── index.jsp  
   ├── home.jsp  
   ├── login.jsp  
   ├── register.jsp  
/WEB-INF  
   ├── web.xml (Deployment Descriptor)  
/lib (JAR files)  
👨‍💻 Author
🔹 Mahendra Singh
🔹 GitHub: [[your-profile ] ( https://github.com/Mahendra0115/ )
🔹 Email: [ mahendrasing0115@gmail.com ]
Portfolio:[ http://127.0.0.1:5500/Portfolio-Website-Template-main/index.html ]
Resume: [ https://drive.google.com/file/d/1URjIlCmORNdVbXwtUMPr4s020q6auc7P/view?usp=drive_link ]

📝 License
This project is MIT Licensed.

🛠️ GitHub Upload Commands
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/your-username/your-repo.git
git push -u origin main
