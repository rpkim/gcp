# Google Cloud Platform
A continuously expanding set of cloud-based products and serices

## Google Cloud Ecosystem
## Solution Continuum
## Infrastructure analogy

## Type of Architectuing GCP
### Essential Infrastrucuture
- VPN, VM, IAM etc
### Augmented Infrastructure
### Application Infrastructure

## How to use GCP
- Cloud Console
Searchbar ( Item / Menu)

- Cloud Shell
5GB user data persists (home directory)

- Cloud SDK(api toolset)

## gcloud
\gcloud compute list\
\gcloud config list\

## API Interfaces
- OAuth2 is used for all authentication
- RESTful API ( get, post, put, delete <-, -> JSON )
- CLI Tools ( gcloud, gsutil)
- Java, Python, NodeJS, Ruby, Go, PHP (support to langugages)

# Cloud Virtual Network(CVN) Objects
## Projects and networks
### Project
- Associates objefcts and services with billing
- Contains networks (quota max 5)

### Network
- Has no IP address range
- Is global and spans all available regions *
  => It means, gcp can create subnet in other region
- Contains subnetworks
- Types of Networks
 - Default, auto, custom
 - auto can be converted to custom but once custom, always custom
