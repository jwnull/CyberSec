# CyberSec
Portfolio of work from Cyber Security Bootcamp

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/azurenetdiagram.png

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - install_elk.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the configuration and system metrics.


The configuration details of each machine may be found below.
| Name                 | Function             | IP Address            | Operating System |
|----------------------|----------------------|-----------------------|------------------|
| Jump-Box-Provisioner | Gateway              | 10.0.0.6 13.85.21.138 | Linux            |
| Web-1                | Web Server           | 10.0.0.7              | Linux            |
| Web-2                | Web Server           | 10.0.0.8              | Linux            |
| Elk-Server           | Logging & Monitoring | 10.1.0.5 13.66.2.77   | Linux            |
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box-Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: <current home IP address>


Machines within the network can only be accessed by Jump-Box-Provisioner.


A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses |
|----------------------|---------------------|----------------------|
| Jump-Box-Provisioner | Only on port 22     | <current_home_IP>    |
| Elk-Server           | Only on port 5601   | <current_home_IP>    |
| Web-1                | No                  |                      |
| Web-2                | No                  |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows additional deployments with very little effort.


The playbook implements the following tasks:
- Installs Docker
- Installs Python
- Installs the Docker module for Python
- Increases the memory allowed to be used by the container
- Downloads and launches the ELK container with the following published ports: 5601, 9200, 5044.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.7, 10.0.0.8

We have installed the following Beats on these machines:
Filebeat

These Beats allow us to collect the following information from each machine:
- Filebeats monitors log files such as audit logs and server logs.   This allows us to monitor changes to user accounts and system configurations, such as the addition of a user account.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the install_elk.yml file to /etc/ansible/files/.
- Update the install_elk.yml file to include the host_group_name being used to identify the target machines in the /etc/ansible/hosts file in the "hosts:" and the account to be used to login, in the "remote_user:" field. 
- Run the playbook, and navigate to the target_machine_ip:5601 to check that the installation worked as expected.
