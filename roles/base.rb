name "base"
description "role applied to all nodes"

run_list=[
 "recipe[users::sysadmins]",
 "recipe[ntp]",
 "recipe[sudo]"
]

env_run_lists(
  "_default" => [],
  "qa" => run_list,
  "test" => run_list,
  "production" => run_list
)

default_attributes(
)

override_attributes(
)
