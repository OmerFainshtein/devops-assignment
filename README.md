# devops-assignment

This repository contains a Continuous Integration (CI) process using Jenkins, Docker, and Docker-compose. The CI process is set up to run a web app. Please note that this program is designed to run specifically on a Linux environment.

## Instructions
Follow these steps to set up and run the CI process and the web app:

### Clone the Repository:
* Clone this repository to your local machine using *https* clone:
git clone <repository_url>

* In your terminal, change your working directory to the repository you just downloaded:
cd <repository_directory>

### Build and Run Docker Compose:
* run: sudo docker-compose up 

* Open a web browser and navigate to http://localhost:8080 to access the Jenkins interface.

### Log in to Jenkins:
* Log in to Jenkins using the following credentials:
* Username: guest
* Password: Aa12345678

### Create a New Jenkins Item:
* In the Jenkins dashboard, click on "New Item" to create a new project.

## Configure the Pipeline:

* Choose a name for the new item.
* Select "Pipeline" as the project type and click "OK."

### Configure Pipeline Script:
* Scroll down to the "Pipeline" section.
* Change the pipeline definition to "Pipeline script from SCM."
* Choose "Git" as the SCM.
* Paste the URL of this Git repository in the "Repository URL" field.

* In the "Branch specifier" field, enter */main to specify the main branch.
### Specify Pipeline Script Path:

* In the "Script Path" field, enter pipeline/Jenkinsfile.

* Click "Apply" and "save".

* Click on "Build Now" to initiate the Jenkins pipeline build process.

### Access the Web App
* Open a new browser tab and navigate to http://localhost:8000 to access the simple web app that is being served.
