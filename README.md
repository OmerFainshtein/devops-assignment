# devops-assignment
# General notes
This repository contains a comprehensive Continuous Integration (CI) process using Jenkins, Docker, and Docker-compose. The CI process is set up to run a simple web app. Please note that this program is designed to run specifically on a Linux environment.

# Instructions
Follow these steps to set up and run the CI process and the web app:

# Clone the Repository:
Clone this repository to your local machine using the following command:

# Copy code
git clone <repository_url>
Navigate to Repository:
In your terminal, change your working directory to the repository you just downloaded:

# Copy code
cd <repository_directory>
Build and Run Docker Compose:
Run the following command to build and start the Docker containers defined in the docker-compose.yml file:

# Copy code
sudo docker-compose up --build
Access the Web App:
Open a web browser and navigate to http://localhost:8080 to access the Jenkins interface.

# Log in to Jenkins:
Log in to Jenkins using the following credentials:
Username: guest
Password: Aa12345678

# Create a New Jenkins Item:
In the Jenkins dashboard, click on "New Item" to create a new project.

# Configure the Pipeline:

Choose a suitable name for the new item.
Select "Pipeline" as the project type and click "OK."
Configure Pipeline Script:

Scroll down to the "Pipeline" section.
Change the pipeline definition to "Pipeline script from SCM."
Specify Source Control Management (SCM):

Choose "Git" as the SCM.
Paste the URL of this Git repository in the "Repository URL" field.
Set Branch Specification:

In the "Branch specifier" field, enter */main to specify the main branch.
Specify Pipeline Script Path:

In the "Script Path" field, enter pipeline/Jenkinsfile as the path to the Jenkins pipeline script.
Apply and Save Configuration:

Click "Apply" to save the configuration changes.
Then click "Save" to create the Jenkins project with the specified settings.
Trigger the Build:

Click on "Build Now" to initiate the Jenkins pipeline build process.
Access the Web App (Again):

Open a new browser tab and navigate to http://localhost:8000 to access the simple web app that is being served.

Please note that this setup assumes you have Docker, Docker-compose, and Jenkins installed on your Linux environment. Following these instructions should guide you through setting up the CI process and running the web app locally. If you encounter any issues, refer to relevant documentation or troubleshoot based on the specific error messages.
