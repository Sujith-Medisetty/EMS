# EMS

## Note:
**There are 2 more branches 
1. Angular Branch contain Angular part of this application.
2. Spring Branch contain Spring part of this application**

## Project Description
The EMS project is developed to post job applications, where interested candidates can apply for it. This project consists of two modules, User module and Admin Module module. In User module, the candidates can apply for job and see new job opening. In Admin module, the admin can perform curd operations and post new jobs.

## Technologies Used
Java 1.8
Html 5, Css, Javascript
Hibernate 5.3
Bootstrap 4
Log4J

## Features
- The end user can register and apply for latest job post.
- The Admin has complete access to perform CURD operations.

**To-do list:**
- Send mails to selected students.
- Optimising the application for all number of users.

## Getting Started
- **Front-end part**
  - install angular
    - npm install -g @angular/cli
  - Crate new Angular Application
    - ng new `<application-name>`
  - Create Components, Pipes, Modules, Guards, Routing based on requirement
    - ng generate component `<component-name>`
    - ng generate pipe `<pipe-name>`
    - ng generate module `<module-name>`
    - ng generate guard `<your-guard-name>`
  - Run angular application
    - ng serve --open

- **Back-end part**
  - Installing STS
      - The easiest way to install STS is right from within Eclipse. Just select Help > Eclipse Marketplace… from the main menu and type “STS” in the search bar of the Eclipse Marketplace dialog.
  - Creating a New Project
      - STS includes its own starter project to get you started. It is accessible from the New Project Wizard. Navigate to File > New > Other… 
  - Project Settingd
      - On the New Spring Starter Project dialog, you’ll have to choose a name for your project. Let’s call it “HelloWorld”. Select Maven as the build tool, and JAR packaging and your Java version. Assign a Group of “com.developer” for the package name. Artifact is the name of the JAR file you are going to build
  - Project Dependencies
      - In the New Spring Starter Project Dependencies window, use the search field and type “web” into it, we can choose the dependencies we want in out project

- **Push Project to Github**
  - Initialize the local directory as a Git repository.
    - git init
  - Use git status to know the status of your application
    - git status
  - Add the files in your new local repository. This stages them for the first commit.
    - git add .
  - Commit the files that you've staged in your local repository.
    - git commit -m "First commit"
  - In the Command prompt, add the URL for the remote repository where your local repository will be pushed.
    - git remote add origin  <REMOTE_URL>
    - git remote -verify
  - Switch between branches if required
    - git checkout -b <new_branch>
  - Push the changes in your local repository to GitHub.
    - git push origin `<selected branch>`
  - use git clone to clone your repository to local machine
    - git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY


## Usage
The end users experiences a flexible user design, where they can register and login to the website. The EMS shows the latest job posts in the portal, where users can apply for it.
