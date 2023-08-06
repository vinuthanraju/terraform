# Use the latest Ubuntu LTS as the base image
FROM ubuntu

# Install ddependencies for Terraform.
RUN apt update \
    && apt install -y wget \
    && apt install -y unzip \
    && apt install -y vim \
    && apt install -y openssh-client

# Download the latest version of Terraform from the official website
RUN wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip

# Unzip the downloaded file:
RUN unzip terraform_0.15.4_linux_amd64.zip

# Move the terraform binary to a directory in your system's PATH.
RUN mv terraform /usr/local/bin/

# Verify that Terraform is installed by checking its version:
RUN terraform version


