#Ad-hoc Workflow Executor
 
#!/bin/bash
 
# Set Informatica environment variables
INFA_HOME=/path/to/informatica
INFA_DOMAINS_FILE=$INFA_HOME/domains.infa
export INFA_HOME INFA_DOMAINS_FILE
 
# Define variables
INFA_USER="your_username"
INFA_PASS="your_password"
INFA_DOMAIN="your_domain"
INFA_SERVICE="your_integration_service"
INFA_FOLDER="your_folder"
WORKFLOW_NAME="your_workflow_name"
 
# Execute the workflow
$INFA_HOME/server/bin/pmcmd startworkflow -sv $INFA_SERVICE -d $INFA_DOMAIN -u $INFA_USER -p $INFA_PASS -f $INFA_FOLDER -wait $WORKFLOW_NAME
