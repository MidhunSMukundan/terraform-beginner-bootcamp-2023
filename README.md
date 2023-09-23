# Terraform Beginner Bootcamp 2023


##Semantic_Versioning:image:

This project is going to utilize semantic versioning for its tagging
[semver.org](https://semver.org/)

The general format:
  **MAJOR.MINOR.PATCH**, eg. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

##Terraform CLI  installation changes

[Install Terraform CLI](https://developer.hashicorp.com/terraform/downloads)


##Refactoring bash script

`wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform`

Added chmod u+x for bash script file to grand execute priviledge

