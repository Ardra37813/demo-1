# * Projects list to add the IAM policies/bindings
projects= ["empc-dev-1-8nyy"]

# * Mode for adding the IAM policies/bindings, additive and authoritative
mode     = "additive"

# Map of role (key) and list of members (value) to add the IAM policies/bindings
bindings = {
  "roles/compute.networkAdmin" = [
    "serviceAccount:tfsa-1@empc-dev-1-8nyy.iam.gserviceaccount.com",
  ]
  "roles/appengine.appAdmin" = [
    "serviceAccount:tfsa-2@empc-dev-1-8nyy.iam.gserviceaccount.com",
  ]
}

# List of maps of role and respective conditions, and the members to add the IAM policies/bindings
conditional_bindings= []
