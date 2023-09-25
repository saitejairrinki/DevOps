Certainly, let's add definitions for AMI (Amazon Machine Image), Snapshot, and explain the difference between an AMI and a Snapshot to the document:

**What is an AMI (Amazon Machine Image):**

An Amazon Machine Image (AMI) is a pre-configured virtual machine image used to create Amazon Elastic Compute Cloud (EC2) instances. It is a snapshot of a specific EC2 instance's root volume, which includes the operating system, application server, software, and configurations. AMIs enable users to launch EC2 instances with the same configuration as the original instance, making it easy to replicate environments and scale applications.

**Purpose and Real-Time Use Case of an AMI:**

The primary purpose of an AMI is to provide a reliable and consistent way to launch new EC2 instances with the desired configuration. Real-time use cases for AMIs include:

1. **Scalability:** When your application experiences increased demand, you can create multiple instances from the same AMI to distribute the workload.

2. **High Availability:** AMIs can be used to create backup instances in different Availability Zones or regions, ensuring redundancy and fault tolerance.

3. **Environment Replication:** Developers and DevOps teams use AMIs to replicate development, testing, and production environments, ensuring consistency and reducing errors.

4. **Disaster Recovery:** AMIs play a crucial role in disaster recovery plans, as they enable you to quickly recreate instances in case of instance failures or other disasters.

**What is a Snapshot:**

A Snapshot is a point-in-time copy of an Amazon Elastic Block Store (EBS) volume. It captures the data on the volume, including any modifications made since the last snapshot. Snapshots are typically used for backup and data recovery purposes. They are stored in Amazon S3 and are incremental, meaning that subsequent snapshots only capture changes made to the volume since the previous snapshot.

**Difference Between Snapshot and AMI:**

1. **Scope:**
   - **AMI:** An AMI is an image of an entire EC2 instance, including the operating system, software, and configuration. It is used to launch new instances.
   - **Snapshot:** A Snapshot is a copy of data stored on an EBS volume. It can be used to create new volumes but does not include the entire instance configuration.

2. **Purpose:**
   - **AMI:** AMIs are used to create new EC2 instances with identical configurations, making them suitable for creating complete virtual machines.
   - **Snapshot:** Snapshots are used for data backup, data recovery, and creating new EBS volumes. They are more focused on data preservation.

3. **Use Cases:**
   - **AMI:** Commonly used for creating and managing instances, scaling applications, and ensuring consistency across environments.
   - **Snapshot:** Primarily used for backing up data, migrating data between volumes, and creating custom volumes with specific data.

4. **Size and Frequency:**
   - **AMI:** Typically larger in size and less frequent, as it captures an entire instance state.
   - **Snapshot:** Smaller in size and can be created more frequently to capture incremental changes.


**What is a Target Group:**

A Target Group is an integral component of AWS Elastic Load Balancers (ELBs), specifically designed for Application Load Balancers (ALBs) and Network Load Balancers (NLBs). Its primary function is to route incoming traffic to one or more registered targets, such as Amazon Elastic Compute Cloud (EC2) instances or IP addresses, based on defined rules and health checks.

**Purpose and Real-Time Use Case of a Target Group:**

The primary purpose of a Target Group is to ensure efficient and fault-tolerant traffic distribution to healthy instances. Real-time use cases for Target Groups include:

1. **Load Balancing:** Target Groups enable even distribution of incoming traffic across multiple instances, ensuring that no single instance becomes overloaded, leading to better application performance.

2. **High Availability:** By associating instances from different Availability Zones (AZs) or regions with a Target Group, you can achieve high availability and fault tolerance. If one AZ or region experiences issues, traffic is routed to healthy instances in other locations.

3. **Health Checks:** Target Groups continually monitor the health of registered instances, automatically removing unhealthy ones from the load balancer's rotation and directing traffic only to healthy instances.

4. **Auto Scaling:** Target Groups can be used in conjunction with Auto Scaling to automatically adjust the number of instances based on traffic load, ensuring your application can handle varying workloads.

**What is a Load Balancer:**

A Load Balancer, in the context of AWS, is a managed service that automatically distributes incoming network or application traffic across multiple targets, such as EC2 instances, containers, or IP addresses. It acts as a traffic dispatcher, enhancing the availability, scalability, and fault tolerance of applications by efficiently balancing the load.

**Purpose and Real-Time Use Case of a Load Balancer:**

The primary purpose of a Load Balancer is to ensure that incoming traffic is distributed optimally to achieve:

1. **High Availability:** Load Balancers distribute traffic across multiple instances, ensuring that if one instance or component fails, traffic is automatically rerouted to healthy ones, minimizing downtime.

2. **Scalability:** Load Balancers allow you to add or remove instances as needed to accommodate changing traffic patterns. This helps applications scale horizontally to handle increased demand.

3. **Security:** Load Balancers can provide SSL/TLS termination, DDoS protection, and web application firewall (WAF) capabilities to enhance the security of your applications.

4. **Session Management:** Some Load Balancers can manage user sessions and maintain session persistence, ensuring that a user's requests are consistently directed to the same instance.

5. **Health Checks:** Load Balancers regularly perform health checks on registered targets to ensure they are responsive. Unhealthy targets are taken out of rotation until they recover.

6. **Content-Based Routing:** Application Load Balancers (ALBs) can route traffic based on content, such as URL paths or HTTP headers, allowing for more sophisticated routing strategies.

In summary, Load Balancers are a critical component in modern cloud architectures, providing the means to achieve high availability, scalability, and reliability for applications by intelligently distributing incoming traffic to a pool of targets. Target Groups, specifically used with Application Load Balancers, play a role in defining how traffic is directed to instances within the load balancer's purview, offering additional control and routing capabilities.

Here are detailed notes on the steps you performed:

**Step 1: Create a Website with the "Highway" Template and Access via IP Address Using "webserver01" Instance:**

1. Launch an EC2 instance on AWS and choose the "Highway" template for your website. This likely involves configuring a web server (e.g., Apache or Nginx) and placing your website files in the appropriate directory.

2. Access the website by using the public IP address associated with the "webserver01" EC2 instance. You can do this by opening a web browser and entering the IP address in the URL bar.

**Step 2: Create an Amazon Machine Image (AMI) Named "Highway":**

1. After configuring "webserver01" to your satisfaction and confirming that your website is accessible via its IP address, go to the AWS Management Console.

2. In the EC2 Dashboard, locate the "webserver01" instance.

3. Right-click on the instance and select "Create Image (AMI)." Provide a name for your AMI, such as "Highway," and include a description if desired.

4. Confirm the action, and AWS will begin creating an image of your instance. This image will include the operating system, software, and configurations.

**Step 3: Launch a New EC2 Instance ("webserver02") with the "Highway" AMI:**

1. In the AWS Management Console, navigate to the EC2 Dashboard.

2. Click on "Launch Instance."

3. In the instance creation wizard, choose "My AMIs" and select the "Highway" AMI that you previously created.

4. Follow the instance launch steps, which include configuring the instance type, security group, and key pair.

5. Launch the new instance ("webserver02").

**Step 4: Access the New "webserver02" IP Address for the "Highway" Website:**

1. Once "webserver02" is running, find its public IP address in the EC2 Dashboard.

2. Open a web browser and enter the IP address of "webserver02" in the URL bar to access the "Highway" website hosted on this new instance.

**Step 5: Create a Target Group with "webserver01" and "webserver02" VMs:**

1. In the AWS Management Console, go to the EC2 Dashboard.

2. Under the "Load Balancing" section, select "Target Groups."

3. Click on "Create target group."

4. Give the target group a name, such as "Highway-TargetGroup."

5. Configure the target group settings, including the protocol and port that your instances are listening on. You can use HTTP (port 80) for a basic web application.

6. In the "Targets" section, add both "webserver01" and "webserver02" instances to the target group.

**Step 6: Create an Application Load Balancer (ALB) with the Above Target Group:**

1. In the AWS Management Console, under the "Load Balancing" section, select "Load Balancers."

2. Click on "Create Load Balancer."

3. Choose "Application Load Balancer."

4. Configure the ALB settings, including assigning a name, selecting your VPC, and configuring listener settings (e.g., HTTP on port 80).

5. In the "Add a listener" section, select the target group you created earlier, "Highway-TargetGroup."

6. Review and create the ALB.

**Step 7: Access the DNS Name and See the "Highway" Website:**

1. Once the ALB is created, it will have a DNS name associated with it. You can find this DNS name in the ALB's details in the AWS Management Console.

2. Open a web browser and enter the ALB's DNS name in the URL bar. This DNS name will route your request to either "webserver01" or "webserver02" based on the load balancing rules defined in the target group.

3. You should now be able to access the "Highway" website via the ALB's DNS name. This demonstrates that the load balancer is distributing traffic between the two instances, providing high availability and scalability for your website.
