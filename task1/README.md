# SimpleTimeService

**SimpleTimeService** is a simple microservice that provides the current timestamp and the IP address of the visitor in a JSON response. This service is designed as a Node.js application and is containerized using Docker.

## Features
- Returns a JSON response containing:
  - `timestamp`: The current date and time.
  - `ip`: The IP address of the visitor.
  
- Containerized with **Docker** and can be deployed anywhere Docker is supported.

## Prerequisites

Before running the application, make sure you have the following installed:

- [Docker](https://www.docker.com/get-started) (for containerization)
- [Python](https://python.org/)

  ## Running the Application
1. **Update the System**
   ```bash
   sudo apt update
   sudo apt upgrade -y
2. **Install Docker(Note: Please restart the system or vm after docker install)**
    ```bash
    sudo apt install docker.io -y
    sudo systemctl status docker
    sudo systemctl start docker
    sudo usermod -aG docker ubuntu
3. **Install venv from pyton for Virtual environment**
   ```bash
   sudo apt install python3.12-venv
4. **Now create and activate the virtual environment and access it**
   ```bash
   python3 -m venv myenv
   cd myenv
   source bin/activate/
5. **Install flask**
   ```bash
   pip install flask
6. **Install git**
   ```bash
   sudo apt instll git-all -y
7. **Get the code from Github**
   ```bash
   git clone https://github.com/chakradharmannepalli/particle41-devops-challenge.git
   cd particle41-devops-challenge/task1
8. **Now build the docker image from docker file**
   ```bash
   docker build -t simple-time-service .
9. **Now run  the docker image**
    ```bash
    docker run -d -p 3000:3000 simple-time-service
10. **Now check whether the server is running or not**
    ```bash
    curl http://localhost:3000 | jq
  <img width="1361" height="322" alt="Screenshot 2025-07-11 162612" src="https://github.com/user-attachments/assets/f7aa25cf-cee1-4c1f-928c-199998e228e4" />

   <img width="1919" height="1015" alt="Screenshot 2025-07-11 162808" src="https://github.com/user-attachments/assets/84edd766-7137-41a6-9d70-edba528cae92" />
