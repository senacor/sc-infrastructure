# sc-infrastructure
Infrastructure configuration

This repository manages deployment and infrastructure configuration of Scorecard Portal Virtual machines.

Content: 
- hr-scorecard - for managing content of VM for deployment of stage and production environment
- tools-hr-scorecard - for managing Jenkins, Javadoc, testing environment, swagger redirecting, deploy utils...

Core features:
- Docker based nginx as reverse proxy for request forwarding to another servers
- (expected) Docker containers for deployment of backend, frontend... 

## Getting started
### hr-scorecard
Go to prod-nginx folder and add:
- folder "certs" with privkey.key and wildcard.crt certificates for specific senacor domain. These files are supposed to be use for SSL communication (for HTTPS protocol).
- folder "logs" and there folder "nginx" for logging nginx access
- run "docker-compose up -d" in prod-nginx folder
- for autostart register autostart.sh file into linux /etc/rc.local file

### tools-hr-scorecard
Go to jenkins-smee-nginx folder and add:
- folder "certs" with privkey.key and wildcard.crt certificates for specific senacor domain. These files are supposed to be use for SSL communication (for HTTPS protocol).
- folder "logs" and there folder "nginx" for logging nginx access
- run "docker-compose up -d" in prod-nginx folder
- for autostart register autostart.sh file into linux /etc/rc.local file
