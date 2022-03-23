This repository contains all the necessary configuration to deploy the CX IAM solution based on keycloak. 
The repository is split up in three parts.
    1. The helm charts to deploy the CX IAM solution to various stages 
    2. An init-image Dockerfile that copies all CX specific configuration onto the Keycloak Server
    3. The import content itself. Currently this is only the keycloak-themes. Late this could be expanded by e.g. realm-config or base-users
    
