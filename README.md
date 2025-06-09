# 💼 HireMeNow – Simplified Job Posting Portal

![Banner](https://img.shields.io/badge/SpringBoot-2.7.9-green?style=for-the-badge&logo=springboot) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-blue?style=for-the-badge&logo=postgresql) ![Apache Tomcat](https://img.shields.io/badge/Tomcat-9-orange?style=for-the-badge&logo=apachetomcat)

> 🚀 A lightweight, elegant, and beginner-friendly job posting portal where users can easily post job openings and browse all available job opportunities.
> 

## ✨ Features

- 🔎 *Browse all job postings* in a responsive card layout.
- 📤 *Post a new job* with form validation.
- 🎨 Clean, modern UI using *JSP, **CSS, **Bootstrap, and .
- 📂 Layered architecture with *Spring Boot MVC* (Controller → Service → Repository).
- 💾 Data persistence using *PostgreSQL*.
- 🌐 Deployed on *Apache Tomcat*.

---

## 🛠 Tech Stack

| Frontend    | Backend        | Database     | Server         |
|-------------|----------------|--------------|----------------|
| JSP         | Spring Boot    | PostgreSQL   | Apache Tomcat  |
| CSS3        | Spring MVC     |              |                |
| Bootstrap   | Java 17+       |              |                |

---

## 📂 Project Structure
<pre>
text
HireMeNow/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── jobapp/
│       │           ├── controller/
│       │           │   └── JobController.java       # Handles web requests and maps them to services
│       │           ├── model/
│       │           │   └── JobPost.java             # Represents a job posting entity
│       │           ├── repo/
│       │           │   └── JobRepo.java             # Data access layer, likely a Spring Data repository
│       │           ├── service/
│       │           │   └── JobService.java          # Business logic for managing job posts
│       │           └── JobApplication.java          # Main application entry point (Spring Boot class)
│       │
│       ├── resources/
│       │   └── application.properties               # Configuration for database, server port, etc.
│       │
│       └── webapp/
│           └── WEB-INF/
│               └── views/
│                   ├── addjob.jsp                  # Form to add a new job post
│                   ├── contact.jsp                 # Contact form page
│                   ├── footer.jsp                  # Reusable footer layout
│                   ├── home.jsp                    # Home page view
│                   ├── submitContact.jsp           # Confirmation after submitting contact
│                   ├── success.jsp                 # Success page after actions
│                   ├── viewalljob.jsp              # Lists all available job posts
│                   ├── addjobstyle.css             # CSS for add job form
│                   ├── homestyle.css               # CSS for home page
│                   └── viewalljobstyle.css         # CSS for job listing page
│
├── target/                                          # Compiled bytecode and packaged artifacts (generated)
├── .gitignore                                       # Files/folders to exclude from Git tracking
├── pom.xml                                          # Maven configuration: dependencies, plugins, build config
├── README.md                                        # Project description, setup, and usage instructions
└── LICENSE                                          # Licensing details (e.g., MIT, Apache)

</pre>
---

## 🚦 How It Works

1. *Users arrive at the homepage* where they can either:
   - View all available jobs.
   - Post a new job.
2. *On form submission*, the data flows:
   - From *Controller* → *Service Layer* → *Repository (DAO)* → *Database*.
3. Jobs are displayed in clean cards fetched from PostgreSQL via Spring Data JPA/Hibernate.

---

## ⚙ Getting Started

### Prerequisites

- Java 17+
- Maven
- PostgreSQL
- Apache Tomcat (9+)


---

## 🙌 Built with ❤ by Abhisek Nayak

> “Find your dream job, or help someone find theirs.” 🌟

---

## 🤝 Contact

*👤 Name:* Abhisek Nayak  
*📧 Email:* [nayakabhise345@gmail.com](mailto:nayakabhise345@gmail.com)  
*📱 Phone:* +91 63722 57181  
*📍 Location:* Bhubaneswar, Odisha, India
