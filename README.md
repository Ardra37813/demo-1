# Google Project Resources Input Template
In this repository, there are multiple .tfvars files that can be utilized to provide variable input for the resources in different modules of the Google Project Resources. This allows for flexible customization of the resources and facilitates their deployment in a consistent manner.
This template has .tfvars files for following Services:

1. [IAM](./iam/) - Identity and Access Management (IAM) is a service that allows users to manage access to their GCP resources by creating and managing roles, granting and revoking permissions, and assigning them to users or groups. It provides a secure and flexible way to control access to their resources and meet compliance requirements.
2. [GCS](./gcs/) - Google Cloud Storage (GCS) is a cloud-based object storage service that allows users to store and access their data in Google's infrastructure. It provides secure, durable, and highly available storage for any type of data, with a simple and cost-effective pricing model.
3. [KMS](./kms/) - Google Cloud Key Management Service (KMS) is a cloud-based service that allows users to create, manage, and use cryptographic keys for data encryption and decryption. It provides a highly secure and scalable way to protect the data in the cloud and meet compliance requirements.
4. [Network](./network/) - A network in Google Cloud Platform (GCP) is a virtual private network that connects various GCP resources such as instances, load balancers, and storage buckets, allowing them to communicate securely with each other. It provides a flexible and scalable way to manage the network infrastructure in the cloud.

Navigate through the respective folders to find specific modules which has .tfvars files for various resources.

## Prerequisite

1. GCP Project has been setup.
2. Update required .tfvars files provided in multiple folders as per different resources like iam, kms, gcs and networking.

## How to run

1. Create repo using this template
2. Update .tfvars files in different folder as per need
3. On the file `scripts/deploy.sh` On #11 change the bucket name to the name of the bucket created by google-project-factory-input-template.
4. Delete folder for which gcp resource is not required e.g- if you don't need gcs then delete gcs folder.
5. If you want to use some service account to have access on gcs or kms or any other project iam permissions then first run this repo github actions with only iam service account folder. So that first service account is created. And then use that service account with other gcp resources like kms, gcs etc.
6. Create service account key which is created as a part of project setup and add into the github action secret: GOOGLE_CREDENTIALS 
7. Create a PAT token and add in github action secret in variable: GH_ACTIONS_PAT
8. Run github actions

## Contact

Gopal Singhal, Ankit Adlakha, Shantanu Jain, Ambuj Prakash, Ardra Malviya
