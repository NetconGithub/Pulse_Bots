#!/bin/bash
 
# Set environment variables
INFA_HOME=/path/to/informatica
DOMAIN_NAME=your_domain
USERNAME=your_username
PASSWORD=your_password
 
# List all users and their roles
$INFA_HOME/server/bin/infacmd.sh ListUsers \
    -dn $DOMAIN_NAME \
    -un $USERNAME \
    -pd $PASSWORD \
    -sdn Native
 
# List all roles and their privileges
$INFA_HOME/server/bin/infacmd.sh ListRoles \
    -dn $DOMAIN_NAME \
    -un $USERNAME \
    -pd $PASSWORD