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
`gcloud compute list`
`gcloud config list`

## API Interfaces
- OAuth2 is used for all authentication
- RESTful API ( get, post, put, delete <-, -> JSON )
- CLI Tools ( gcloud, gsutil)
- Java, Python, NodeJS, Ruby, Go, PHP (support to langugages)

## Network Latency
- https://cloudharmony.com/speedtest-for-google

### How to delete networks and subnetworks


# Service Accounts
- Provide an identity for carrying out `server-to-server` interactions in a porject without supplying user credentials
- Used to `authenticate` from one service to another

## Identified by an email address
- 123465643-compute@project.gserviceaccount.com

## Three types of service accounts
- User-created(custom)
- Built-in
- Google APIs service account

# IAM
![IAM](https://cloud.google.com/iam/docs/overview?hl=en_US&_ga=2.256658379.-1724541431.1510060618&_gac=1.24065736.1510535694.Cj0KCQiA_5_QBRC9ARIsADVww17gFPXTmV3WyNECTLg7OAjV8figlmDUY_Ss8vI0GVcL03AdblCHGhUaAoZtEALw_wcB)

# OAuth 2.0 Playground
![OAuth 2.0 Playground](https://developers.google.com/oauthplayground/)