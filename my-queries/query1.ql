import actions

from Job job
where
  not exists(job.getPermissions()) and
  not exists(job.getEnclosingWorkflow().getPermissions()) and
  // exists a trigger event that is not a workflow_call
  exists(Event e |
    e = job.getATriggerEvent() and
    not e.getName() = "workflow_call"
  )
select job, "Actions Job or Workflow does not set permissions"