 import javascript
 import semmle.javascript.Actions
 
 
 /**
  * The `on: pull_request_target`.
  */
 class ProbablePullRequestTarget extends Actions::On, YamlMappingLikeNode {
   ProbablePullRequestTarget() {
     // The `on:` is triggered on `pull_request_target`
     exists(this.getNode("pull_request_target"))
   }
 }
 
 from ProbablePullRequestTarget pullRequestTarget
 select pullRequestTarget, pullRequestTarget, "Warning on 'pull_request_target'."