# Microsoft SQL Server Docker Repository

This repository contains files to manage and run Microsoft SQL Server in a Docker container.

## Prerequisites

- Docker installed on your machine.
- Basic knowledge of Docker and SQL Server.

## Getting Started

1. Clone this repository to your local machine.

1. Navigate to the directory where the repository is cloned and then Docker subdirectory

1. Run the following commands to pull and run the official Microsoft SQL Server Docker image:

   1. `1.pull_image.sh` or `1.pull_image_ubuntu.sh`

   1. `2.run_container.sh` or `2.run_container_ubuntu.sh`

   1. `3.install_sqlcmd.sh` or `3.install_sqlcmd_ubuntu.sh`

   1. `4.connect_with_sqlcmd.sh`

1. The last command uses sqlcmd, you need to install it on your machine in order to use it:

   1. using sudo `dnf install sqlcmd` if you're using Red Hat like OS or `sudo apt install sqlcmd` if using Debian like OS