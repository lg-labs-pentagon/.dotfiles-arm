# ------------------------------------------------------------------------------
# Workspace
# ------------------------------------------------------------------------------

# LOCATIONS TO $path ARRAY
typeset -U path

# shellcheck disable=SC2206
path=(
  "/opt/homebrew/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)