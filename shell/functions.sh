function cdd() {
  cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function recent_dirs() {
  # This script depends on pushd. It works better with autopush enabled in ZSH
  escaped_home=$(echo $HOME | sed 's/\//\\\//g')
  selected=$(dirs -p | sort -u | fzf)

  cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}

# Kubernetes
function get_namespaces() {
  kubectl get namespace
}

function get_namespace() {
  kubectl config view --minify | grep namespace
}

function set_namespace() {
  kubectl config set-context --current --namespace=$1
}

function get_pods() {
  kubectl get pods
}
