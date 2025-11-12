# HAZESOFT-T1

This repository contains a `Dockerfile` to create a Docker image that serves a simple static website using nginx.

## Task Description

The `Dockerfile` automates the following tasks:
- Uses the `alpine` linux image.
- Installs `nginx` and `git`.
- Clones the repository `https://github.com/veekrum/task`.
- Copies the `site` folder from the cloned repository to the nginx document root `/var/www/html`.
- Exposes port 80.

## How to Run

1.  **Build the Docker image:**
    ```sh
    docker build -t hazesoft-t1 .
    ```

2.  **Run the Docker container:**
    To expose the website on port 9000 of your local machine, run the following command:
    ```sh
    docker run -d -p 9000:80 --name hazesoft-t1-container hazesoft-t1
    ```

3.  **Access the website:**
    Open your web browser and navigate to [http://localhost:9000/site/index.html](http://localhost:9000/site/index.html). You should see the message "You did it, Congratulations!!".

## To Stop and Remove the Container

1.  **Stop the container:**
    ```sh
    docker stop hazesoft-t1-container
    ```

2.  **Remove the container:**
    ```sh
    docker rm hazesoft-t1-container
    ```
