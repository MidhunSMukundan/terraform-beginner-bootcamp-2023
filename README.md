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

##wORKING WITH Env Vars

# `env`  List enviornment variable

`#env | grep terraform`


##Setting Env Var
```sh
Env_Val='value
```
##Print Env Var

```sh
echo $Env_Val
```

### Scoping of Env Vars

its limitted to terminal , if Env Var to persisit in all future terninal 
need to set the Env Var to bash profile

####Persisting Env Var

```
gp env Env_Val ='value'
```

or ot can be added in gitpod.yml


###INSTALL aws cli

   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
      unzip awscliv2.zip
      sudo ./aws/install


###Checking Aws configuration by running 

```aws sts get-caller-identity```


###aws cli env vars

https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

export AWS_ACCESS_KEY_ID='AKIAIOSFODNN7EXAMPLE'
export AWS_SECRET_ACCESS_KEY='wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY'
export AWS_DEFAULT_REGION=us-west-2



###Terraform basics

registry :https://registry.terraform.io/

-Providers

-Modules


commands:
```
terraform init

terraform plan

terraform apply 

terraform apply --auto-approve

terraform output

```


.terraform.lock.hcl  has provider version this file to be submitted to Version control

terraform.tfstate contain information about current state of infrastrecture 
tis file **should not be commited** to version control

terraform.tfstate.backup  previous state file backup



terraform destroy

`terraform destroy --auto-approve`



terraform login

credentials "app.terraform.io" {
  token = ""xxxxxxxx
}


https://developer.hashicorp.com/terraform/cli/config/config-file#credentials



bash script created 
 source ./bin/generate_tfrc_credentials



### tf alias

open   ~/.bash_profile was not working in gitpod so used vi

 vi  ~/.bash_profile
add  alias tf="terraform"


reload the profile
source ~/.bash_profile