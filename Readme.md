 **README.md for Network Automation Project**


# Network Automation and Configuration Project

## 📌 Overview
This project automates the provisioning and configuration of network devices using **Terraform, Ansible, and AWS**. It also includes a **CI/CD pipeline** to deploy network configurations automatically.

## 🛠️ Tools & Technologies Used
- **Terraform** - Infrastructure as Code (IaC) for provisioning network infrastructure.
- **Ansible** - Automating the configuration of network devices.
- **AWS EC2** - Cloud infrastructure for hosting network services.
- **Docker** - Containerizing network applications.
- **GitHub Actions** - CI/CD pipeline automation.

---

## 🏗️ Project Setup

### **1. Clone the Repository**

git clone https://github.com/yourusername/network-automation.git
cd network-automation


### **2. Configure AWS Credentials**
Ensure you have configured your AWS credentials for Terraform:

aws configure

> Enter your AWS Access Key & Secret Key.

### **3. Initialize Terraform**

terraform init


### **4. Deploy Network Infrastructure**

terraform apply -auto-approve

> This will create the EC2 instance, security groups, and networking setup.

---

## 🖥️ Network Configuration Using Ansible

### **1. Connect to EC2 and Run Ansible Playbook**

ansible-playbook -i inventory.ini configure_network.yml


### **2. Check Network Configuration**

ansible -i inventory.ini all -m ping

---

## 🚀 CI/CD Pipeline Setup

### **1. CI/CD Workflow**
The GitHub Actions workflow automatically:
1. **Builds and pushes a Docker image** when code is pushed to the `main` branch.
2. **Deploys the network configuration** to the AWS instance.

### **2. Trigger Deployment**
Simply push changes to the repository, and the automation pipeline will take care of:
- Deploying new configurations
- Restarting network services
- Verifying successful deployment

---

## 📝 Configuration Files
### **1. Terraform Configuration (main.tf)**
Handles:
- EC2 instance creation
- Security group setup
- Networking rules

### **2. Ansible Playbook (configure_network.yml)**
Automates:
- Network device configuration
- Firewall rule setup
- Routing protocols

### **3. Inventory File (inventory.ini)**
Defines:
- EC2 instances
- Network devices IPs
- SSH authentication

---

## 📷 Screenshots & Architecture Diagram
- **[Insert architecture diagram here]**
- Screenshots of Terraform execution, Ansible configuration, and CI/CD deployment.

---

## ⚠️ Troubleshooting

### **1. Terraform Issues**
- Run `terraform destroy` to remove infrastructure and re-deploy.
- Ensure AWS credentials are correctly configured.

### **2. Ansible Errors**
- Ensure SSH keys are correctly set up in `inventory.ini`.
- Run `ansible -m ping all` to test connection.

---


---

## 🔗 References
- [Terraform Docs](https://developer.hashicorp.com/terraform)
- [Ansible Docs](https://docs.ansible.com)
- [AWS Networking](https://aws.amazon.com/networking/)
- [GitHub Actions](https://docs.github.com/en/actions)
```

---

