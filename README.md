# HAZESOFT-T1

This repository contains a `Dockerfile` to create a Docker image that serves a simple static website using nginx.

## Task Description

The `Dockerfile` automates the following tasks:
- Uses the `alpine` linux image.
- Installs `nginx` and `git`.
- Clones the repository `https://github.com/veekrum/task`.
- Copies the `site` folder from the cloned repository to the nginx document root.
- Exposes port 80.

## How to Run

### Method 1: Running with Docker Locally

1.  **Build the Docker image:**
    ```sh
    docker build -t hazesoft-t1 .
    ```

2.  **Run the Docker container:**
    ```sh
    docker run -d -p 9000:80 --name hazesoft-t1-container hazesoft-t1
    ```

3.  **Access the website:**
    Open your web browser and navigate to [http://localhost:9000/site/index.html](http://localhost:9000/site/index.html).

### Method 2: Deploying with Ansible to a VM

When this project is deployed to a Virtual Machine via Ansible (as per Task 2), the URL will be different.

-   **To access from your browser:** Use the VM's IP address, like so: `http://<VM_IP_ADDRESS>:9000/site/index.html`
-   **To verify from the command line (as per Task 2 requirements):** SSH into the VM and use `localhost`: `ssh user@<VM_IP_ADDRESS> "curl http://localhost:9000/site/index.html"`
