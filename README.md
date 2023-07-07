## _dbt-snowflake-airdlow-demo_

[![N|able](https://user-images.githubusercontent.com/76805373/152945012-5d715499-4498-4d8b-85c7-b5b8a6b82da9.png)](https://www.n-able.biz/)


[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)]()

## Introduction
This project demonstrates the use of dbt (data build tool) with Snowflake, a cloud-based data warehouse. dbt is a popular open-source tool that enables data transformation and modeling in a version-controlled and collaborative manner. This README provides a step-by-step guide to set up and use dbt with Snowflake.

## Getting Started

To get started with this project, follow the steps below:

## Prerequisites

- dbt (data build tool) installed on your local machine. You can install dbt by following the instructions at [dbt Installation Guide](https://docs.getdbt.com/dbt-cli/installation)
- Snowflake account (including credentials)

### Steps to Create a Snowflake Account
1. Go to the Snowflake website: https://www.snowflake.com/.
2. Click "Get Started" or "Try For Free."
3. Fill out the required information, including email and password.
4. Choose your preferred cloud platform (AWS, Azure, GCP).
5. Provide additional details like your name and company.
6. Accept the terms of service and privacy policy.
7. Complete any verification steps.
8. Activate your account by clicking the link in the email you receive.
9. Set up your first Snowflake instance by selecting region, organization name, and account identifier.
10. Access the Snowflake web interface to start using the platform.

Optionally, configure your account by adding users, roles, databases, and tables.
Refer to [Snowflake documentation ](https://docs.snowflake.com/user-guide/admin-trial-account) for further guidance.
## **steps**: 
#### Intall Docker #### 
##### 1. Download and install Docker by following the official instructions for your operating system. #####

##### 2. Once the installation is complete, verify that Docker is running by opening a terminal (or command prompt) and running the following command: ##### 
```sh
docker --version
```
You should see the Docker version information printed in the terminal.

### Install the project dependencies:
```sh
pip install -r requirements.txt
```
### Running the container

1. start required docker services with docker-compose-initiate database
    ```sh
     docker compose up airflow-init
    ```
    Running Airflow:
    ```sh
    docker compose up
    ```
2. check all docker application services up and running 
    ```sh
    $ sudo docker ps
    ```