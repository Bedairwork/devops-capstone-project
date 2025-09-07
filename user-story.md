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



    
