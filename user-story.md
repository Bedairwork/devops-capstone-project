**As a** [role]  
**I need** [function]  
**So that** [benefit]  
      
### Details and Assumptions
    * [document what you know]      
### Acceptance Criteria     
    gherkin 
    Given [some context]
    When [certain action is taken]
    Then [the outcome of action is observed]


 Title: Need the ability to automate continuous integration checks
    **As a** Developer
    **I need** automation to build and test every pull request
    **So that** I do not have to rely on manual testing of each request, which is time-consuming
    #### Assumptions
    * GitHub Actions will be used for the automation workflow
    * The workflow must include code linting and testing 
    * The Docker image should be postgres:alpine for the database
    * A GitHub Actions badge should be added to the README.md to reflect the build status
    #### Acceptance Criteria
    ```gherkin
   Given code is ready to be merged
When a pull request is created
Then GitHub Actions should run linting and unit tests
And the badge should show that the build is passing
    ```


     Title: Need to add security headers and CORS policies
    **As a** service provider
    **I need** my service to use security headers and CORS policies
    **So that** my web site is not vulnerable to CORS attacks
    #### Assumptions
    * Flask-Talisman will be used for security headers
    * Flask-Cors will be used to establish cross-origin resource sharing (CORS) policies
    #### Acceptance Criteria
    ```gherkin
    Given the site is secured
    When a REST API request is made
    Then secure headers and a CORS policy should be returned
    ```

    Given the site is secured
When a REST API request is made
Then secure headers and a CORS policy should be returned

Title: Containerize your microservice using Docker
**As a** developer
**I need** to containerize my microservice using Docker
**So that** I can deploy it easily with all of its dependencies
### Assumptions
* Create a `Dockerfile` for repeatable builds
* Use a `Python:3.9-slim` image as the base
* It must install all of the Python requirements
* It should not run as `root`
* It should use the `gunicorn` wsgi server as an entry point
### Acceptance Criteria
Given the Docker image named accounts has been created
When I use `docker run accounts`
Then I should see the accounts service running in Docker

Title: Deploy your Docker image to Kubernetes
**As a** service provider
**I need** my service to run on Kubernetes
**So that** I can easily scale and manage the service
### Assumptions
* Kubernetes manifests will be created in yaml format
* These manifests could be useful to create a CD pipeline
* The actual deployment will be to OpenShift
### Acceptance Criteria
Given the Kubernetes manifests have been created
When I use the oc command to apply the manifests
Then the service should be deployed and run in Kubernetes

Title: Create a CD pipeline to automate deployment to Kubernetes
**As a** developer
**I need** to create a CD pipeline to automate deployment to Kubernetes
**So that** the developers are not wasting their time doing it manually
### Assumptions
* Use Tekton to define the pipeline
* It should clone, lint, test, build, and deploy the service
* Deployment should be to OpenShift
* It can use a manual trigger for this MVP
### Acceptance Criteria
Given the CD pipeline has been created
When I trigger the pipeline run
Then I should see the accounts service deployed to OpenShift

    
