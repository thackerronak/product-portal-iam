# Catena-X IAM: Keycloak instances

This repository contains all the necessary configuration to deploy the Catena-X (CX) Keycloak instances based on the [helm chart from Bitnami](https://artifacthub.io/packages/helm/bitnami/keycloak/7.1.18) (chart version 7.1.18, app version 16.1.1).

The repository is split up in:

* The helm charts to deploy the Catena-X (CX) Keycloak instances
* A dockerfile for an init container that copies all CX specific configuration onto the Keycloak Server (e.g. keycloak-themes and realm-config)
