# 1-Devops_project-5-1-2025
1st devops project Angular website fully automated
Welcome to the Fully Automated Devops project for a Angular static webpage basic.

ZERO manual clicks | Infrastructure + CICD + Deployment automated

Project Overview:
    - Deploy a static website(HTML/CSS/JS)with:
        -Continuous Version Control(Git)
        -Automated CI/CD
        -Static hosting with S3
        -Infrastructure as a Code
        -Security and Monitoring

Tools:
| Tool              | Purpose                               |
| ----------------- | ------------------------------------- |
| Git + GitHub      | Version control & trigger automation  |
| Docker            | Containerisation (jenkins)            |
| Jenkins           | CI/CD pipeline automation             |
| Terraform         | Provision AWS infra automatically     |
| Amazon S3         | Static website hosting                |
| Amazon CloudFront | CDN + HTTPS                           |


Steps
1. Intialising git
2. Have all the website data on the same folder
3. Create Docker directory
4. Create the dockerfile for node taking package.json & lock.json and adding the angular directory running the project 
5. Node JS version v24.12.0.
6. Multistage docker build for less storage 
7. To run and build the Dockerfile use command 

    **docker build -t appbuild:xx -f docker/Dockerfile . **


    **docker run -d appbuild:xx -p 8080:80


    **docker run -d appbuild:xx -p 8080:80


8. The above dockerfile is made just for testing purpose and doesn't perform any task in this particular project.