# Disable greeting
set -U fish_greetings

# Set prompt
set -g tide_right_prompt_items status cmd_duration context jobs direnv node python rustc java php pulumi ruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir zig time
set -g tide_prompt_add_newline_before true
