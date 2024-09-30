Name: PC_OW16 Check for Mission Critical Workflows Becoming Unscheduled
Description: This rule checks to see if any mission-critical workflows have become unscheduled.
Rule Text: 
when 1 pc_runtime_workflow_stats t0 
with watchlist:"Mission Critical Scheduled Workflows" contains t0.workflow_name 
and t0.workflow_run_type = "SCHEDULE" 
and (t0.workflow_status != "RUNNING" 
and t0.workflow_status != "SUCCESSFUL" 
and t0.workflow_status != "SCHEDULED") 
then "PowerCenter Notification Response" 
with topic = "pc_runtime_workflow_stats as pc_notifications", 
properties = "*", 
params = "body = PowerCenter Workflow ${t0.folder}/${t0.workflow_name} has been unscheduled. <br> 
The Workflow was run by the Integration Service ${t0.is_name}. <br> 
The status of the latest Workflow run is: ${t0.workflow_status} <br> 
Possible causes for this Workflow becoming unscheduled are that it failed or was stopped/aborted - PLEASE INVESTIGATE!, 
subject = Workflow ${t0.folder}/${t0.workflow_name} has been unscheduled, 
persona = pcmonitor, 
priority = 5, 
channels = Run Time, 
rulename = ${drql_rulename}, 
keyval = ${t0.workflow_run_id}, 
tstamp = ${t0.workflow_end_time}, 
delivery = default, 
snooze = 0, 
product = Operations, 
artifact_type = Workflow, 
rule_group = O3 Execution failures, 
rule_user = OPS_USER"

has context menu