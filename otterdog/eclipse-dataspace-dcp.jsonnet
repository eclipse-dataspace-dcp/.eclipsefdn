local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-dataspace-dcp') {
  settings+: {
    description: "",
    name: "Decentralized Claims Protocol ",
    plan: "free",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
_repositories+:: [
  orgs.newRepo('decentralized-claims-protocol') {
    allow_rebase_merge: true,
    allow_update_branch: false,
    delete_branch_on_merge: false,
    description: "Specification for the Decentralized Claims Protocol (DCP)",
    has_discussions: true,
    has_wiki: false,
    squash_merge_commit_title: "PR_TITLE",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  ]
}
