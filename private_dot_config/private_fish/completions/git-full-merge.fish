# Completion for custom git full-merge command
complete -f -c git -n __fish_git_needs_command -a full-merge -d 'Join multiple development histories [custom]'
complete -f -c git -n '__fish_git_using_command full-merge' -ka '(__fish_git_branches)'
