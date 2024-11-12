terraform-associate

## Udemy course
https://www.udemy.com/course/terraform-beginner-to-advanced

https://github.com/zealvora/terraform-beginner-to-advanced-resource

## Notes
Can target specific resources with `-target=resource_type.resource_name` 
`tf apply -target=github_repository.example`


## Github Provider
Login to github CLI: `gh auth login`
Additional permissions are required to delete repositories: `gh auth refresh -s delete_repo`

## aws-nuke

Dry run
`aws-nuke nuke -c nuke-config.yml --no-prompt --prompt-delay 3`

No dry run
`aws-nuke nuke -c nuke-config.yml --no-dry-run --no-prompt`