#!/bin/bash
 
# Set environment variables
DOMAIN_NAME="your_domain"
USER_NAME="your_username"
PASSWORD="your_password"
SERVICE_NAME="your_service_name"
NODE_NAME="your_node_name"
 
# Check service status
infacmd.sh isp GetServiceProcessStatus -dn $DOMAIN_NAME -un $USER_NAME -pd $PASSWORD -sn $SERVICE_NAME -nn $NODE_NAME
 
# Check for errors
infacmd.sh isp GetLastError -dn $DOMAIN_NAME -un $USER_NAME -pd $PASSWORD -sn $SERVICE_NAME -nn $NODE_NAME